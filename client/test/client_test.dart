import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_api/grpc_api.dart';
import 'package:mocktail/mocktail.dart';

class WeatherInfoServiceClientMock extends Mock implements WeatherInfoServiceClient {
  WeatherInfoServiceClientMock() {
    registerFallbackValue(GetCurrentWeatherInfoRequest());
  }
}

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  final T value;
  MockResponseFuture(this.value);
  @override
  Future<S> then<S>(FutureOr<S> Function(T value) onValue, {Function? onError}) =>
      Future.value(value).then(onValue, onError: onError);
}

void main() {
  group('WeatherInfoServiceClient', () {
    test('getCurrentWeatherInfo', () async {
      final client = WeatherInfoServiceClientMock();
      when(() => client.getCurrentWeatherInfo(any())).thenAnswer((_) => MockResponseFuture(
          GetCurrentWeatherInfoResponse(
              weatherInfo: WeatherInfo(message: 'Hello', temperature: 20.1, isRainy: false, isNight: true))));
      final response = await client.getCurrentWeatherInfo(GetCurrentWeatherInfoRequest());
      expect(response.weatherInfo.isRainy, false);
    });
  });
}
