import 'package:flutter/material.dart';
import 'package:grpc_api/grpc_api.dart';
import 'package:server/server.dart';

final weatherInfoServer = WeatherInfoServer();
void main() {
  weatherInfoServer.runServer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'GRPC Server Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GRPC Server Demo'),
      ),
      body: Center(
        child: StreamBuilder<WeatherInfo>(
            stream: weatherInfoServer.datastore.streamWeatherInfo('abc'),
            builder: (context, snapshot) {
              if (snapshot.data == null) return const CircularProgressIndicator();
              return Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('message:'),
                    trailing: SizedBox(
                      width: 200,
                      child: TextFormField(
                        initialValue: snapshot.data!.message,
                        onChanged: (value) {
                          weatherInfoServer.datastore.updateWeatherInfo('abc', (b) => b..message = value);
                        },
                      ),
                    ),
                  ),
                  ListTile(
                      title: const Text('temperature'),
                      trailing: SizedBox(
                          width: 200,
                          child: TextFormField(
                            initialValue: snapshot.data!.temperature.toString(),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              weatherInfoServer.datastore
                                  .updateWeatherInfo('abc', (b) => b..temperature = double.tryParse(value) ?? 0);
                            },
                          ))),
                  CheckboxListTile(
                    title: const Text('isNight'),
                    value: snapshot.data!.isNight,
                    onChanged: (bool? value) {
                      weatherInfoServer.datastore.updateWeatherInfo('abc', (b) => b..isNight = value!);
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('isCloudy'),
                    value: weatherInfoServer.datastore.getWeatherInfo('abc')!.isCloudy,
                    onChanged: (bool? value) {
                      weatherInfoServer.datastore.updateWeatherInfo('abc', (b) => b..isCloudy = value!);
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('isRainy'),
                    value: weatherInfoServer.datastore.getWeatherInfo('abc')!.isRainy,
                    onChanged: (bool? value) {
                      weatherInfoServer.datastore.updateWeatherInfo('abc', (b) => b..isRainy = value!);
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}
