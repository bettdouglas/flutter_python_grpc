from argparse import ArgumentParser
from grpc_interceptor.exception_to_status import ExceptionToStatusInterceptor
from sqlalchemy import MetaData,create_engine,Table
from sqlalchemy import select

#support for geometries
from geoalchemy2 import Geometry
from geoalchemy2.shape import to_shape

from alaska_pb2_grpc import AlaskerServicer
from alaska_pb2 import Rivers,River,Airport,Airports,Lakes,Lake,Regions,Region,BuiltUps,BuiltUp
from shapely_serializer import ShapelyGeometrySerializer
import alaska_pb2_grpc
import argparse


shapely_serializer = ShapelyGeometrySerializer()

def serialize_river(row):
    return River(
        id = row.ogc_fid,
        codedesc = row.f_codedesc,
        name = row.nam,
        code = row.f_code,
        geom = shapely_serializer.serialize(to_shape(row.geom))
    )

def serialize_airport(row):
    return Airport(
        gid=row.ogc_fid,
        id = row.id,
        fk_region = row.fk_region,
        elevation = row.elev,
        name = row.name,
        use = row.use,
        geom = shapely_serializer.serialize(to_shape(row.geom))
    )

def serialize_lake(row):
    return Lake(
        gid = row.ogc_fid,
        name = row.names,
        geom = shapely_serializer.serialize(to_shape(row.geom))
    )

def serialize_region(row):
    return Region(
        id = row.ogc_fid,
        name = row.name_2,
        type = row.type_2,
        geom = shapely_serializer.serialize(to_shape(row.geom))
    )

def serialize_built_up(row):
    return BuiltUp(
        gid = row.ogc_fid,
        category = row.cat,
        name = row.name,
        code = row.f_code,
        geom = shapely_serializer.serialize(to_shape(row.geom))
    )


class AlaskerServicerImpl(AlaskerServicer):

    def __init__(self,engine) -> None:
        metadata = MetaData(bind=engine)
        connection = engine.connect()
        self.connection = connection

        #use sqlalchemy reflection
        self.rivers = Table('rivers',metadata,autoload=True,autoload_with=engine)

        self.lakes = Table('lakes',metadata,autoload=True,autoload_with=engine)

        self.airports = Table('airports',metadata,autoload=True,autoload_with=engine)

        self.regions = Table('regions',metadata,autoload=True,autoload_with=engine)

        self.built_ups = Table('builtups',metadata,autoload=True,autoload_with=engine)

        self.geometry_columns = Table('geometry_columns',metadata,autoload=True,autoload_with=engine)


    def GetRivers(self, request, context):
        print('GetRivers request')
        #ignore feature request
        s = select([self.rivers])
        rows = self.connection.execute(s)
        rivers = [serialize_river(row) for row in rows]
        return Rivers(
            rivers = rivers,
            srid = 4326,
        )

    def GetAirports(self, request, context):
        print('GetAirports request')
        s = select([self.airports])
        rows = self.connection.execute(s)
        return Airports(
            airports = [serialize_airport(row) for row in rows],
            srid = 4326,
        )

    def GetLakes(self, request, context):
        s = select([self.lakes])
        rows = self.connection.execute(s)
        return Lakes(
            lakes = [serialize_lake(row) for row in rows],
            srid = 4326,
        )

    def GetRegions(self, request, context):
        s = select([self.regions])
        rows = self.connection.execute(s)
        return Regions(
            regions = [serialize_region(row) for row in rows],
            srid = 4326,
        )

    def GetBuildUps(self, request, context):
        s = select([self.built_ups])
        rows = self.connection.execute(s)
        return BuiltUps(
            builtups = [serialize_built_up(row) for row in rows],
            srid = 4326
        )

import grpc
from concurrent import futures

import grpc.beta.implementations
from grpc._cython import cygrpc

def insecure_channel(host, port):
        channel = grpc.insecure_channel(
            target=host if port is None else '%s:%d' % (host, port),
            options=[(cygrpc.ChannelArgKey.max_send_message_length, -1),
                     (cygrpc.ChannelArgKey.max_receive_message_length, -1)])
        return grpc.beta.implementations.Channel(channel)



def serve(password,db_name='alaska_features',username='postgres',host='localhost'):
    engine = create_engine('postgresql://{}:{}@{}/{}'.format(username,password,host,db_name))

    alaska_impl = AlaskerServicerImpl(engine)

    server = grpc.server(
        futures.ThreadPoolExecutor(max_workers=10),
        interceptors=[ExceptionToStatusInterceptor()],
    )
    
    alaska_pb2_grpc.add_AlaskerServicer_to_server(alaska_impl,server)

    server.add_insecure_port('0.0.0.0:4326')
    # server.add_insecure_port('[::]:50001')

    print('Server running at 0.0.0.0:4326. Cd to alaska_freezed_app and start debugging\nRemember to type \n\t adb reverse tcp:4326 tcp:4326\n if using emulator')

    server.start()

    server.wait_for_termination()

if __name__ == "__main__":
    parser = ArgumentParser()
    
    parser.add_argument('-db','--db_name',help="PostgreSQL db_name where you imported alaska shapefiles in ./import-alaska-data.sh",type=str)
    parser.add_argument('--host',help='Host the PostgreSQL server is running in',type=str)
    parser.add_argument('-u','--username',help='Username to connect to PostgreSQL as')
    parser.add_argument('-w','--password',help='Password of the database user')

    args = parser.parse_args()

    serve(args.password)

    
