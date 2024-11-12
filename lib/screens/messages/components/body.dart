import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import '../../../models/chat_message.dart'; // Importa el modelo ChatMessage
import 'chat_input_field.dart'; // Importa el widget ChatInputField
import 'message.dart'; // Importa el widget Message

// Widget Body que define la estructura principal de la pantalla de mensajes
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // Expande el widget hijo para llenar el espacio disponible
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), // Padding horizontal
            child: ListView.builder(
              itemCount: demeChatMessages.length, // Número de elementos en la lista (basado en la lista de mensajes de ejemplo)
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]), // Construye un widget Message para cada mensaje en la lista
            ),
          ),
        ),
        const ChatInputField(), // Widget de campo de entrada de mensajes en la parte inferior
      ],
    );
  }
}
