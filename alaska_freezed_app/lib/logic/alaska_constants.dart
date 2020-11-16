import 'package:grpc/grpc.dart';
import 'package:i_know_everything/alaska_protos/index.dart';
import 'package:i_know_everything/logic/alaska_logic.dart';

final options = ChannelOptions(
  credentials: ChannelCredentials.insecure(),
  connectionTimeout: Duration(milliseconds: 500),
);

final clientChannel = ClientChannel(
  '0.0.0.0',
  port: 4326,
  options: options,
);

final alaskaStub = AlaskerClient(clientChannel);
final feature = Feature();

final airportProvider = DataProvider(alaskaStub.getAirports(feature));
final regionsProvider = DataProvider(alaskaStub.getRegions(feature));
final lakesProvider = DataProvider(alaskaStub.getLakes(feature));
final builtupsProvider = DataProvider(alaskaStub.getBuildUps(feature));
final riversProvider = DataProvider(alaskaStub.getRivers(feature));
