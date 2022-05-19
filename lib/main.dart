import 'package:liveemf/home.dart';
import 'package:liveemf/models/magnitudeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MagnitudeProvider(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(fontFamily: 'DMSans', brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: Home()),
    );
  }
}
