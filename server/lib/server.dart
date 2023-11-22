import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_api/grpc_api.dart';
import 'package:protobuf/protobuf.dart';
import 'package:rxdart/rxdart.dart';

class WeatherInfoServer {
  final datastore = Datastore();

  Future<void> runServer() async {
    final server = Server.create(
      services: [WeatherInfoService(datastore)],
      codecRegistry: CodecRegistry(codecs: const [GzipCodec()]),
    );
    await server.serve(port: 50051);
    print('Server listening on port ${server.port}...');
  }
}

class WeatherInfoService extends WeatherInfoServiceBase {
  Datastore datastore;
  List<StreamController<StreamCurrentWeatherInfoResponse>> streamControllers = [];
  WeatherInfoService(this.datastore);

  @override
  Future<GetCurrentWeatherInfoResponse> getCurrentWeatherInfo(
      ServiceCall call, GetCurrentWeatherInfoRequest request) async {
    final weatherInfo = datastore.getWeatherInfo(request.locationId);
    if (weatherInfo != null) {
      return GetCurrentWeatherInfoResponse(weatherInfo: weatherInfo);
    }
    throw const GrpcError.notFound();
  }

  @override
  Stream<StreamCurrentWeatherInfoResponse> streamCurrentWeatherInfo(
      ServiceCall call, StreamCurrentWeatherInfoRequest request) {
    return datastore
        .streamWeatherInfo(request.locationId)
        .map((event) => StreamCurrentWeatherInfoResponse(weatherInfo: event));
  }

  @override
  Future<GetLocationsResponse> getLocations(ServiceCall call, GetLocationsRequest request) {
    throw const GrpcError.unimplemented();
  }
}

class Datastore {
  final database = {
    'abc': WeatherInfo(
      temperature: 20.5,
      isRainy: false,
      isNight: true,
      isCloudy: false,
      message: 'Hello message',
    )
  };

  final subjects = <String, BehaviorSubject<WeatherInfo>>{};

  WeatherInfo? getWeatherInfo(String locationId) {
    return database[locationId];
  }

  void updateWeatherInfo(String locationId, void Function(WeatherInfo) rebuild) {
    database[locationId] = (database[locationId]!.freeze() as WeatherInfo).rebuild(rebuild);
    subjects[locationId]?.add(database[locationId]!);
  }

  Stream<WeatherInfo> streamWeatherInfo(String locationId) {
    return subjects.putIfAbsent(locationId, () => BehaviorSubject.seeded(database[locationId]!)).stream;
  }
}
