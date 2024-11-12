import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'

// Widget VideoMessage que representa un mensaje de video en la pantalla de chat
class VideoMessage extends StatelessWidget {
  const VideoMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Tamaño ajustado del contenedor
      width: MediaQuery.of(context).size.width * 0.45, // El ancho es el 45% del ancho total de la pantalla
      child: AspectRatio(
        aspectRatio: 1.6, // Relación de aspecto de 1.6 para mantener la proporción del video
        child: Stack(
          alignment: Alignment.center, // Alinea los elementos al centro del contenedor
          children: [
            // Imagen de fondo del video
            ClipRRect(
              borderRadius: BorderRadius.circular(8), // Bordes redondeados de la imagen
              child: Image.asset("assets/images/Video Place Here.png"), // Imagen de marcador de posición del video
            ),
            // Botón de reproducción en el centro de la imagen
            Container(
              height: 25, // Altura del botón de reproducción
              width: 25, // Ancho del botón de reproducción
              decoration: const BoxDecoration(
                color: kPrimaryColor, // Color de fondo del botón
                shape: BoxShape.circle, // Forma circular del botón
              ),
              child: const Icon(
                Icons.play_arrow, // Ícono de reproducción
                size: 16, // Tamaño del ícono
                color: Colors.white, // Color del ícono
              ),
            )
          ],
        ),
      ),
    );
  }
}
