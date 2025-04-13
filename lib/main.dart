import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  MyApp({super.key});

  Future<void> _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak("Hi");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TTS 範例')),
        body: Center(
          child: ElevatedButton(onPressed: _speak, child: const Text('說出 Hi')),
        ),
      ),
    );
  }
}
