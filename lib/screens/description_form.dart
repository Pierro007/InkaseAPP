import 'package:flutter/material.dart';

class DescriptionForm extends StatefulWidget {
  @override
  _DescriptionFormState createState() => _DescriptionFormState();
}

class _DescriptionFormState extends State<DescriptionForm> {
  final _formKey = GlobalKey<FormState>();
  String clothingColor = '';
  String shoesType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Décris-toi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Couleur des vêtements'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une couleur';
                  }
                  return null;
                },
                onSaved: (value) {
                  clothingColor = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Type de chaussures'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un type de chaussures';
                  }
                  return null;
                },
                onSaved: (value) {
                  shoesType = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Description enregistrée')),
                    );
                  }
                },
                child: Text('Soumettre'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

