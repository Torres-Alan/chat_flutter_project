import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import '../../../models/chat_message.dart'; // Importa el modelo ChatMessage

// Widget TextMessage que muestra un mensaje de texto en la pantalla de chat
class TextMessage extends StatelessWidget {
  const TextMessage({
    super.key,
    this.message, // Mensaje de tipo ChatMessage que se pasará al widget
  });

  final ChatMessage? message; // Mensaje a mostrar

  @override
  Widget build(BuildContext context) {
    return Container(
      // Contenedor que envuelve el texto del mensaje
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75, // Espaciado horizontal
        vertical: kDefaultPadding / 2, // Espaciado vertical
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(message!.isSender ? 1 : 0.1), // Color de fondo del mensaje con opacidad según el remitente
        borderRadius: BorderRadius.circular(30), // Bordes redondeados del contenedor
      ),
      child: Text(
        message!.text, // Texto del mensaje
        style: TextStyle(
          color: message!.isSender
              ? Colors.white // Color blanco si el mensaje es enviado por el usuario
              : Theme.of(context).textTheme.bodyLarge!.color, // Color basado en el tema si es recibido
        ),
      ),
    );
  }
}
