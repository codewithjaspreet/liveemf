import 'package:liveemf/models/magnitudeProvider.dart';
import 'package:liveemf/widgets/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class XYZReading extends StatefulWidget {
  const XYZReading({Key? key}) : super(key: key);

  @override
  _XYZReadingState createState() => _XYZReadingState();
}

class _XYZReadingState extends State<XYZReading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text('Update Interval'),
        Consumer<MagnitudeProvider>(
          builder: (context, model, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 1,
                groupValue: model.groupvalue,
                onChanged: (dynamic value) => model.setUpdateInterval(
                    1, Duration.microsecondsPerSecond ~/ 1),
              ),
              Text("1 FPS"),
              Radio(
                value: 2,
                groupValue: model.groupvalue,
                onChanged: (dynamic value) => model.setUpdateInterval(
                    2, Duration.microsecondsPerSecond ~/ 30),
              ),
              Text("30 FPS"),
              Radio(
                value: 3,
                groupValue: model.groupvalue,
                onChanged: (dynamic value) => model.setUpdateInterval(
                    3, Duration.microsecondsPerSecond ~/ 60),
              ),
              Text("60 FPS"),
            ],
          ),
        ),
        SizedBox(height: 20),
        Consumer<MagnitudeProvider>(
          builder: (context, model, child) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              textWidget('x: ${model.x.toStringAsFixed(2)}'),
              textWidget('y: ${model.y.toStringAsFixed(2)}'),
              textWidget('z: ${model.z.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ],
    );
  }
}
