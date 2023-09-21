import 'package:flutter/material.dart';

// Enumeración que define la fuente del mensaje (propietario del usuario o de otro)
enum FromWho {
  mine,   // El mensaje proviene del usuario
  other,  // El mensaje proviene de otra fuente
}

// Clase que representa un mensaje en la aplicación
class Message {
  final String text;        // Texto del mensaje
  final String? imageUrl;  // URL de la imagen adjunta (puede ser nulo si no hay imagen)
  final FromWho fromWho;   // Fuente del mensaje (mine para el usuario, other para otra fuente)

  // Constructor de la clase
  Message({
    required this.text,      // El texto es un parámetro requerido
    this.imageUrl,          // La URL de la imagen es un parámetro opcional
    required this.fromWho,  // La fuente del mensaje es un parámetro requerido
  });
}
