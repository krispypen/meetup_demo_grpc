import 'package:grpc/grpc.dart';
import 'package:grpc_api/grpc_api.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
  final client = WeatherInfoServiceClient(channel);
  try {
    final response = await client.getCurrentWeatherInfo(
      GetCurrentWeatherInfoRequest()..locationId = 'abc',
      options: CallOptions(metadata: {
        'custom-header-1': 'value1',
        'custom-header-2': 'value2',
      }),
    );
    print('WeatherInfoServiceClient received: ${response.weatherInfo.toProto3Json()}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
