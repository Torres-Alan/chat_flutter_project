import '../../../models/chat_message.dart'; // Importa el modelo ChatMessage
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import 'audio_message.dart'; // Importa el widget AudioMessage
import 'text_message.dart'; // Importa el widget TextMessage
import 'video_message.dart'; // Importa el widget VideoMessage

// Widget Message que representa un mensaje en la pantalla de chat
class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message, // Mensaje de tipo ChatMessage que se pasará al widget
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    // Función que construye el contenido del mensaje basado en su tipo
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message); // Mensaje de texto
        case ChatMessageType.audio:
          return AudioMessage(message: message); // Mensaje de audio
        case ChatMessageType.video:
          return const VideoMessage(); // Mensaje de video
        default:
          return const SizedBox(); // Espacio vacío si no hay contenido
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding), // Espaciado superior
      child: Row(
        mainAxisAlignment: message.isSender
            ? MainAxisAlignment.end // Alinea a la derecha si el mensaje es enviado por el usuario
            : MainAxisAlignment.start, // Alinea a la izquierda si el mensaje es recibido
        children: [
          if (!message.isSender) ...[ // Si el mensaje no es del remitente, muestra el avatar
            const CircleAvatar(
              radius: 12, // Radio del avatar
              backgroundImage: AssetImage("assets/images/user_2.png"), // Imagen del avatar
            ),
            const SizedBox(width: kDefaultPadding / 2), // Espaciado horizontal
          ],
          messageContaint(message), // Contenido del mensaje
          if (message.isSender) // Si el mensaje es enviado, muestra el estado del mensaje
            MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

// Widget MessageStatusDot que muestra un punto de estado para el mensaje
class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    // Función que devuelve el color del punto basado en el estado del mensaje
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.notSent:
          return kErrorColor; // Rojo si no se envió
        case MessageStatus.notView:
          return Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.1); // Color opaco si no ha sido visto
        case MessageStatus.viewed:
          return kPrimaryColor; // Color primario si fue visto
        default:
          return Colors.transparent; // Transparente si no hay estado
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2), // Espaciado a la izquierda
      height: 12, // Altura del punto
      width: 12, // Ancho del punto
      decoration: BoxDecoration(
        color: dotColor(status!), // Color del punto basado en el estado
        shape: BoxShape.circle, // Forma circular
      ),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done, // Ícono basado en el estado
        size: 8, // Tamaño del ícono
        color: Theme.of(context).scaffoldBackgroundColor, // Color del ícono basado en el fondo del scaffold
      ),
    );
  }
}
