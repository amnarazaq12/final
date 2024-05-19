import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ResultPage extends StatefulWidget {
  final String resultMessage;

  const ResultPage({super.key, required this.resultMessage});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    // Extracting BMI value from the result message for the gauge
    final double bmiValue = double.tryParse(widget.resultMessage) ?? 0.0;

    return Scaffold(
      backgroundColor: Color(0xFFDE638A),
      appBar: AppBar(
        backgroundColor: Color(0xFFDE638A),
        title: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Image.asset(
            'icon.png', // Ensure the path is correct
            height: 70,
            width: 70,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI Result:',
              style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              widget.resultMessage,
              style: TextStyle(fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),
            SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 40,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 18.5,
                color: Colors.pink[400],
                      label: 'Underweight',
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth:0.3,
                      endWidth: 0.3,
                      labelStyle: GaugeTextStyle(
                        color: Colors.white, // Set the font color here
                      fontSize: 15, // Optional: set the font size
                        fontWeight: FontWeight.bold, // Optional: set the font weight
                      ),
                    ),
                    GaugeRange(
                      startValue: 18.5,
                      endValue: 24.9,
                      color: Colors.pink[500],
                      label: 'Normal',
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.3,
                      endWidth: 0.3,
                      labelStyle: GaugeTextStyle(
                        color: Colors.white, // Set the font color here
                        fontSize: 15, // Optional: set the font size
                        fontWeight: FontWeight.bold, // Optional: set the font weight
                      ),
                    ),
                    GaugeRange(
                      startValue: 24.9,
                      endValue: 29.9,
                      color: Colors.pink[600],
                      label: 'Overweight',
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.3,
                      endWidth: 0.3,
                      labelStyle: GaugeTextStyle(
                        color: Colors.white, // Set the font color here
                        fontSize: 15, // Optional: set the font size
                        fontWeight: FontWeight.bold, // Optional: set the font weight
                      ),
                    ),
                    GaugeRange(
                      startValue: 29.9,
                      endValue: 40,
                      color: Colors.pink[700],
                      label: 'Obese',
                      sizeUnit: GaugeSizeUnit.factor,
                      startWidth: 0.3,
                      endWidth: 0.3,
                      labelStyle: GaugeTextStyle(
                        color: Colors.white, // Set the font color here
                        fontSize: 15,  // Optional: set the font size
                        fontWeight: FontWeight.bold, // Optional: set the font weight
                      ),
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: bmiValue,
                      needleColor: Colors.pink[600],
                      knobStyle: KnobStyle(color: Colors.pink[700]),
                    ),
                  //  MarkerPointer(
                    //  value: bmiValue,
                      //  markerType: MarkerType.text,
                       //text: bmiValue.toString(),
                    //),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Container(
                        child: Text(
                          'BMI',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.5,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}