import 'package:grpc/grpc.dart';
import 'package:grpc_api/grpc_api.dart';

class WeatherInfoService extends WeatherInfoServiceBase {
  @override
  Future<GetCurrentWeatherInfoResponse> getCurrentWeatherInfo(
      ServiceCall call, GetCurrentWeatherInfoRequest request) async {
    if (request.locationId == 'abc') {
      return GetCurrentWeatherInfoResponse(
          weatherInfo: WeatherInfo(temperature: 20.1, isRainy: false, isNight: true, message: 'Hello'));
    }
    throw const GrpcError.notFound();
  }

  @override
  Stream<StreamCurrentWeatherInfoResponse> streamCurrentWeatherInfo(
      ServiceCall call, StreamCurrentWeatherInfoRequest request) {
    throw const GrpcError.unimplemented();
  }

  @override
  Future<GetLocationsResponse> getLocations(ServiceCall call, GetLocationsRequest request) {
    throw const GrpcError.unimplemented();
  }
}

Future<void> main(List<String> args) async {
  final server = Server.create(
    services: [WeatherInfoService()],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec()]),
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
