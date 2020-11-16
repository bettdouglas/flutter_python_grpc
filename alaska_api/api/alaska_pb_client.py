from alaska_pb2_grpc import AlaskerStub
from alaska_pb2 import Feature
import grpc

if __name__ == "__main__":
    with grpc.insecure_channel('localhost:4326') as channel:
        alasker_stub = AlaskerStub(channel)


        # rivers = alasker_stub.GetRivers(Feature())
        # for river in rivers.rivers:
        #     print(river.name)
        # print('Received {} rivers'.format(len(rivers.rivers)))
        airports = alasker_stub.GetAirports(Feature())

        print(airports)
        

        # regions = alasker_stub.GetRegions(Feature())
        # # for region in regions.regions:
        #     # print(region.name)
        # print('Received {} regions'.format(len(regions.regions)))

        # lakes = alasker_stub.GetLakes(Feature())
        # # for lake in lakes.lakes:
        #     # print(lake.name)
        # print('Received {} lakes'.format(len(lakes.lakes)))