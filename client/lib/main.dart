import 'package:client/weather_info_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'GRPC Client Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SMIInput<bool>? _nightInput;
  SMIInput<bool>? _cloudyInput;
  SMIInput<bool>? _rainyInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GRPC Client Demo'),
      ),
      body: StreamBuilder(
        stream: WeatherInfoService().streamWeatherInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          _rainyInput?.value = snapshot.data?.isRainy ?? false;
          _cloudyInput?.value = snapshot.data?.isCloudy ?? false;
          _nightInput?.value = snapshot.data?.isNight ?? false;
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              RiveAnimation.asset(
                'assets/weather_app_demo.riv',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                onInit: (artboard) {
                  final controller = StateMachineController.fromArtboard(artboard, 'State Machine 1');
                  artboard.addController(controller!);
                  _nightInput = controller.findInput<bool>('night') as SMIBool;
                  _cloudyInput = controller.findInput<bool>('cloudy') as SMIBool;
                  _rainyInput = controller.findInput<bool>('rainy') as SMIBool;
                },
              ),
              if (snapshot.hasData)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('${NumberFormat('#.##').format(snapshot.data!.temperature)} °C',
                          style: const TextStyle(color: Colors.white, fontSize: 45)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          snapshot.data?.message ?? '',
                          style: const TextStyle(color: Colors.white, fontSize: 45),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}
