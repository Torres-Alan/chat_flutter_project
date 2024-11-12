import '../../../models/chat_message.dart'; // Importa el modelo ChatMessage
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'

// Widget AudioMessage para mostrar un mensaje de audio
class AudioMessage extends StatelessWidget {
  final ChatMessage? message; // Mensaje de tipo ChatMessage que se pasará al widget

  const AudioMessage({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    // Construye un contenedor que representa el mensaje de audio
    return Container(
      width: MediaQuery.of(context).size.width * 0.55, // Ancho del contenedor: 55% del ancho de la pantalla
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75, // Padding horizontal
        vertical: kDefaultPadding / 2.5, // Padding vertical
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
        color: kPrimaryColor.withOpacity(message!.isSender ? 1 : 0.1), // Color de fondo con opacidad según el remitente
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow, // Ícono de reproducción
            color: message!.isSender ? Colors.white : kPrimaryColor, // Color del ícono según el remitente
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2), // Padding interno
              child: Stack(
                clipBehavior: Clip.none, // Permite que los elementos desborden el contenedor
                alignment: Alignment.center, // Alinea los elementos al centro
                children: [
                  Container(
                    width: double.infinity, // Ancho completo del contenedor
                    height: 2, // Altura del contenedor de la línea
                    color: message!.isSender
                        ? Colors.white
                        : kPrimaryColor.withOpacity(0.4), // Color de la línea según el remitente
                  ),
                  Positioned(
                    left: 0, // Posición del círculo al inicio de la línea
                    child: Container(
                      height: 8, // Altura del círculo
                      width: 8, // Ancho del círculo
                      decoration: BoxDecoration(
                        color: message!.isSender ? Colors.white : kPrimaryColor, // Color del círculo según el remitente
                        shape: BoxShape.circle, // Forma circular
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "0.37", // Duración del audio (en segundos)
            style: TextStyle(
              fontSize: 12, // Tamaño de la fuente
              color: message!.isSender ? Colors.white : null, // Color del texto según el remitente
            ),
          ),
        ],
      ),
    );
  }
}
