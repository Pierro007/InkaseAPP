import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final bool isAvailable; // Indicateur de disponibilité
  final String username; // Nom d'utilisateur
  final String description; // Description de l'utilisateur

  ProfileCard({
    required this.isAvailable,
    required this.username,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey, // Couleur de fond de la carte
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              username,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(description),
            if (isAvailable) // Affiche un message si l'utilisateur est disponible
              Text('Disponible', style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}

