import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter
import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'

// Widget ChatInputField que define el campo de entrada de texto en la parte inferior de la pantalla de chat
class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Contenedor que envuelve el campo de entrada de texto
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding, // Espaciado horizontal
        vertical: kDefaultPadding / 2, // Espaciado vertical
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor, // Color de fondo igual al del scaffold
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4), // Desplazamiento de la sombra
            blurRadius: 32, // Radio de desenfoque de la sombra
            color: const Color(0xFF087949).withOpacity(0.08), // Color de la sombra con opacidad
          ),
        ],
      ),
      child: SafeArea(
        // Asegura que el contenido no se superponga a las áreas seguras del dispositivo
        child: Row(
          children: [
            const Icon(Icons.mic, color: kPrimaryColor), // Ícono de micrófono
            const SizedBox(width: kDefaultPadding), // Espaciado entre íconos
            Expanded(
              // Expande el contenedor del campo de texto para llenar el espacio disponible
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75, // Padding interno del campo de texto
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05), // Color de fondo con opacidad
                  borderRadius: BorderRadius.circular(40), // Bordes redondeados
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined, // Ícono de emoji
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.64), // Color del ícono con opacidad
                    ),
                    const SizedBox(width: kDefaultPadding / 4), // Espaciado entre íconos
                    const Expanded(
                      child: TextField(
                        // Campo de texto para escribir mensajes
                        decoration: InputDecoration(
                          hintText: "Type message", // Texto de sugerencia
                          border: InputBorder.none, // Sin borde para el campo de texto
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file, // Ícono de adjuntar archivo
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.64), // Color del ícono con opacidad
                    ),
                    const SizedBox(width: kDefaultPadding / 4), // Espaciado entre íconos
                    Icon(
                      Icons.camera_alt_outlined, // Ícono de cámara
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.64), // Color del ícono con opacidad
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
