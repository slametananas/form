import 'package:flutter/cupertino.dart';
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
  double nilaislider = 1;
  bool nilaiCheckbox = false;
  bool nilaiSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("belajar form flutter"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: new InputDecoration(
                    hintText: "masukkan nama lengkap",
                    labelText: "nama lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                    hintText: "masukkan no. telp",
                    labelText: "NO telp.",
                    icon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'nomor telepon tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: new InputDecoration(
                    hintText: "masukkan tanggal",
                    labelText: "tanggal",
                    icon: Icon(Icons.date_range),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'tanggal tidak boleh kosong';
                  }
                  return null;
                },
              ),
              CheckboxListTile(
                title: Text('belajar dasar flutter'),
                subtitle: Text('Dart, widget, http'),
                value: nilaiCheckbox,
                activeColor: Colors.deepPurple,
                onChanged: (value) {
                  setState(() {
                    nilaiCheckbox = value!;
                  });
                },
              ),
              SizedBox(
                height: 5,
              ),
              SwitchListTile(
                title: Text('Backend programing'),
                subtitle: Text('Dart, Nodejs, PHP, Java, dll'),
                value: true,
                activeTrackColor: Colors.pink,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    nilaiSwitch = value;
                  });
                },
              ),
              Slider(
                value: nilaislider,
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    nilaislider = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text(
                  "submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
