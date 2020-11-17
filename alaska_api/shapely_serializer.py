from shapely.geometry import Point,LineString,LinearRing,Polygon,MultiPoint,MultiPolygon,MultiLineString
from shapely.geometry.base import BaseGeometry
import shapely
from shapely.geometry.collection import GeometryCollection
import geometry_pb2 as gpb


class ShapelyGeometrySerializer:
    """
    Serializes shapely geometries to geoprotobuf geometries
    """
    def serialize(self,geometry: BaseGeometry) -> gpb.Geometry:
        geom_type = type(geometry)

        if(geom_type is Point):
            return self.serialize_point(geometry)
        if(geom_type is LineString):
            return self.serialize_linestring(geometry)
        if(geom_type is LinearRing):
            return self.serialize_linearing(geometry)
        if(geom_type is Polygon):
            return self.serialize_polygon(geometry)
        if(geom_type is MultiPoint):
            return self.serialize_multi_point(geometry)
        if(geom_type is MultiLineString):
            return self.serialize_multi_linestring(geometry)
        if(geom_type is MultiPolygon):
            return self.serialize_multi_polygon(geometry)
        if(geom_type is GeometryCollection):
            return self.serialize_geometry_collection(geometry)

    def serialize_point(self,p: Point) -> gpb.Geometry:
        try:
            coordinate = gpb.Coordinate(x=p.x,y=p.y,z =p.z)
        except shapely.errors.DimensionError:
            coordinate = gpb.Coordinate(x=p.x,y=p.y)

        return gpb.Geometry(
            type = gpb.Type.POINT,
            coordinates = [coordinate]
        )
    
    def serialize_linestring(self,l: LineString):
        if(len(l.coords) < 2):
            raise 'Insufficient Coordinates'
        else:
            coords = [self.create_coordinate_from_tuple(coord) for coord in list(l.coords)]
            return gpb.Geometry(
                type = gpb.Type.LINESTRING,
                coordinates = coords
            )

    def serialize_linearing(self,l: LinearRing):
        if(len(l.coords) < 2):
            raise 'Insufficient Coordinates'
        else:
            coords = [self.create_coordinate_from_tuple(coord) for coord in list(l.coords)]
            return gpb.Geometry(
                type = gpb.Type.LINEARRING,
                coordinates = coords
            )

    def create_coordinate_from_tuple(self,coordinates) -> gpb.Coordinate:
        try:
            return gpb.Coordinate(
                x = coordinates[0],
                y = coordinates[1],
                z = coordinates[2]
            )
        except IndexError:
            return gpb.Coordinate(
                x = coordinates[0],
                y = coordinates[1],
            )

    def serialize_polygon(self,geometry: Polygon) -> gpb.Geometry:
        #get outer ring
        exterior_linestring = geometry.exterior
        #get inner linear rings
        interior_rings = geometry.interiors

        exterior_coords = [self.create_coordinate_from_tuple(coord) for coord in list(exterior_linestring.coords)]
        external_geo = gpb.Geometry(
            coordinates = exterior_coords
        )

        geo_polygon = None

        if(len(interior_rings) > 0):
            interior_geometries = []
            for linear_ring in interior_rings:
                ring_coords = [self.create_coordinate_from_tuple(coord) for coord in linear_ring.coords]
                iGeo = gpb.Geometry(
                    coordinates = ring_coords,
                )
                interior_geometries.append(iGeo)
            interiorGeos = gpb.Geometry(
                geometries = interior_geometries,
            )
            geo_polygon = gpb.Geometry(
                type = gpb.Type.POLYGON,
                geometries = [external_geo,interiorGeos]
            )
        else:
            geo_polygon = gpb.Geometry(
                type = gpb.Type.POLYGON,
                geometries = [external_geo]
            )

        return geo_polygon

    def serialize_multi_point(self,mp: MultiPoint):
        return gpb.Geometry(
            type = gpb.Type.MULTIPOINT,
            geometries = [self.serialize_point(point) for point in mp.geoms]
        )

    def serialize_multi_linestring(self,ls: MultiLineString):
        return gpb.Geometry(
            type=gpb.Type.MULTILINESTRING,
            geometries = [self.serialize_linestring(line) for line in ls.geoms]
        )

    def serialize_multi_polygon(self,mp: MultiPolygon):
        return gpb.Geometry(
            type = gpb.Type.MULTIPOLYGON,
            geometries = [self.serialize_polygon(p) for p in mp.geoms]
        )

    def serialize_geometry_collection(self,gc: GeometryCollection):
        for geom in gc.geoms:
            geometries = []
            geom_type = type(geom)
            if(geom_type is Point):
                geometries.extend(self.serialize_point(geom))
            elif(geom_type is LinearRing):
                geometries.extend(self.serialize_linearing(geom))
            elif(geom_type is LineString):
                geometries.extend(self.serialize_linestring(geom))
            elif(geom_type is Polygon):
                geometries.extend(self.serialize_polygon(geom))
            elif(geom_type is MultiPoint):
                geometries.extend(self.serialize_multi_point(geom))
            elif(geom_type is MultiLineString):
                geometries.extend(self.serialize_multi_linestring(geom))
            elif(geom_type is MultiPolygon):
                geometries.extend(self.serialize_multi_polygon(geom))
            else:
                raise 'Unsupported Geometric type for Protobuf Serialization. Cannot convert {}'.format(geom_type)