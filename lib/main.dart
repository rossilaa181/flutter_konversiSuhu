import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
                        '150',
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
                        '200',
                        style: TextStyle(fontSize: 48),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32),
                child: ElevatedButton(
                  onPressed: () {},
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
