///
//  Generated code. Do not modify.
//  source: alaska.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Feature$json = const {
  '1': 'Feature',
  '2': const [
    const {'1': 'feature', '3': 1, '4': 1, '5': 14, '6': '.alaska.Feature.FeatureType', '10': 'feature'},
  ],
  '4': const [Feature_FeatureType$json],
};

const Feature_FeatureType$json = const {
  '1': 'FeatureType',
  '2': const [
    const {'1': 'AIRPORT', '2': 0},
    const {'1': 'LAKE', '2': 2},
    const {'1': 'RIVER', '2': 3},
    const {'1': 'BUILT_UPS', '2': 4},
    const {'1': 'REGIONS', '2': 5},
    const {'1': 'TREES', '2': 6},
  ],
};

const River$json = const {
  '1': 'River',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'codedesc', '3': 2, '4': 1, '5': 9, '10': 'codedesc'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'geom', '3': 5, '4': 1, '5': 11, '6': '.geometry.Geometry', '10': 'geom'},
  ],
};

const Rivers$json = const {
  '1': 'Rivers',
  '2': const [
    const {'1': 'rivers', '3': 1, '4': 3, '5': 11, '6': '.alaska.River', '10': 'rivers'},
    const {'1': 'srid', '3': 2, '4': 1, '5': 5, '10': 'srid'},
  ],
};

const Airport$json = const {
  '1': 'Airport',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 5, '10': 'gid'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'fk_region', '3': 3, '4': 1, '5': 5, '10': 'fkRegion'},
    const {'1': 'elevation', '3': 4, '4': 1, '5': 1, '10': 'elevation'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'use', '3': 6, '4': 1, '5': 9, '10': 'use'},
    const {'1': 'geom', '3': 7, '4': 1, '5': 11, '6': '.geometry.Geometry', '10': 'geom'},
  ],
};

const Airports$json = const {
  '1': 'Airports',
  '2': const [
    const {'1': 'airports', '3': 1, '4': 3, '5': 11, '6': '.alaska.Airport', '10': 'airports'},
    const {'1': 'srid', '3': 2, '4': 1, '5': 5, '10': 'srid'},
  ],
};

const Lake$json = const {
  '1': 'Lake',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 5, '10': 'gid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'geom', '3': 3, '4': 1, '5': 11, '6': '.geometry.Geometry', '10': 'geom'},
  ],
};

const Lakes$json = const {
  '1': 'Lakes',
  '2': const [
    const {'1': 'lakes', '3': 1, '4': 3, '5': 11, '6': '.alaska.Lake', '10': 'lakes'},
    const {'1': 'srid', '3': 2, '4': 1, '5': 5, '10': 'srid'},
  ],
};

const BuiltUp$json = const {
  '1': 'BuiltUp',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 5, '10': 'gid'},
    const {'1': 'category', '3': 2, '4': 1, '5': 5, '10': 'category'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'geom', '3': 5, '4': 1, '5': 11, '6': '.geometry.Geometry', '10': 'geom'},
  ],
};

const BuiltUps$json = const {
  '1': 'BuiltUps',
  '2': const [
    const {'1': 'builtups', '3': 1, '4': 3, '5': 11, '6': '.alaska.BuiltUp', '10': 'builtups'},
    const {'1': 'srid', '3': 2, '4': 1, '5': 5, '10': 'srid'},
  ],
};

const Region$json = const {
  '1': 'Region',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'geom', '3': 4, '4': 1, '5': 11, '6': '.geometry.Geometry', '10': 'geom'},
  ],
};

const Regions$json = const {
  '1': 'Regions',
  '2': const [
    const {'1': 'regions', '3': 1, '4': 3, '5': 11, '6': '.alaska.Region', '10': 'regions'},
    const {'1': 'srid', '3': 2, '4': 1, '5': 5, '10': 'srid'},
  ],
};

