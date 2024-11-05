import 'package:flutter/material.dart';
// Importation de la page d'accueil si nécessaire
// import 'screens/home_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INKASE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Remplace par ta page d'accueil
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue sur INKASE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenue sur INKASE',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajouter la logique pour la connexion
              },
              child: Text('Connexion'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Ajouter la logique pour l'inscription
              },
              child: Text('Inscription'),
            ),
          ],
        ),
      ),
    );
  }
}
