import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_api/grpc_api.dart';

class ChannelCredentialsWithCertificatePinning extends ChannelCredentials {
  ByteData certBytes;
  ChannelCredentialsWithCertificatePinning.secure(this.certBytes) : super.secure();

  @override
  SecurityContext get securityContext {
    final context = SecurityContext(withTrustedRoots: false);
    context.setAlpnProtocols(supportedAlpnProtocols, false);
    context.setTrustedCertificatesBytes(certBytes.buffer.asUint8List());
    return context;
  }
}

class WeatherInfoService {
  late final client = WeatherInfoServiceClient(ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      //credentials: ChannelCredentialsWithCertificatePinning.secure(await rootBundle.load('assets/grpc_certificate.pem')),
      //credentials: const ChannelCredentials.secure(),
      credentials: const ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  ));

  Future<WeatherInfo> getWeatherInfo() async {
    final response = await client.getCurrentWeatherInfo(
      GetCurrentWeatherInfoRequest()..locationId = 'abc',
      options: CallOptions(metadata: {
        'custom-header-1': 'value1',
        'custom-header-2': 'value2',
      }),
    );
    return response.weatherInfo;
  }

  Stream<WeatherInfo> streamWeatherInfo() {
    return client
        .streamCurrentWeatherInfo(StreamCurrentWeatherInfoRequest()..locationId = 'abc')
        .map((event) => event.weatherInfo);
  }
}
