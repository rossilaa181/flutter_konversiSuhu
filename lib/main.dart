import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputSuhuController = TextEditingController();

  // Dynamic variable
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  String _stringKelvin = '0.0';
  String _stringReamur = '0.0';

  void _temperatureConversion() {
    setState(() {
      _inputUser = double.parse(inputSuhuController.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * (4 / 5);

      _stringKelvin = _kelvin.toStringAsFixed(1);
      _stringReamur = _reamur.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konversi Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                controller: inputSuhuController,
                decoration:
                    InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Suhu dalam Kelvin',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        '$_stringKelvin',
                        style: TextStyle(fontSize: 48),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Suhu dalam Reamor',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        '$_stringReamur',
                        style: TextStyle(fontSize: 48),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32),
                child: ElevatedButton(
                  onPressed: _temperatureConversion,
                  child: Text(
                    'Konversi Suhu',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
