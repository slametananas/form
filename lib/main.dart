import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "belajar form flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formkey = GlobalKey<FormState>();
  double nilaislider = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CheckboxListTile(
                title: Text('belajar dasar flutter'),
                subtitle: Text('Dart, widget, http'),
                value: true,
                activeColor: Colors.deepPurple,
                onChanged: (value) {},
              ),
              SwitchListTile(
                title: Text('Backend programing'),
                subtitle: Text('Dart, Nodejs, PHP, Java, dll'),
                value: true,
                activeTrackColor: Colors.pink,
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
              Slider(
                  value: nilaislider,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      nilaislider = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
