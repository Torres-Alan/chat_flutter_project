import '../../../models/chat.dart'; // Importa el modelo Chat que contiene los datos del chat, como el nombre, imagen y estado.
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter para usar widgets y estilos.

import '../../../constants.dart'; // Importa el archivo de constantes donde se definen colores y valores de padding.

class ChatCard extends StatelessWidget { // Define un widget sin estado llamado ChatCard.
  const ChatCard({
    super.key, // Inicializa la clave para identificar el widget en el árbol de widgets.
    required this.chat, // Parámetro requerido que representa los datos del chat.
    required this.press, // Parámetro requerido que define la función de callback que se ejecuta cuando se presiona la tarjeta.
  });

  final Chat chat; // Propiedad que contiene la información del chat.
  final VoidCallback press; // Propiedad que almacena la función que se ejecuta al presionar la tarjeta.

  @override
  Widget build(BuildContext context) { // Método build que construye el widget.
    return InkWell( // InkWell proporciona un efecto de ondulación cuando se presiona.
      onTap: press, // Define la acción que se ejecuta al presionar el widget.
      child: Padding( // Añade espacio alrededor del contenido de la tarjeta.
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75), // Padding horizontal y vertical basado en valores constantes.
        child: Row( // Organiza los elementos en una fila horizontal.
          children: [
            Stack( // Stack permite superponer widgets, útil para el avatar y el indicador de estado.
              children: [
                CircleAvatar( // Muestra una imagen circular del usuario.
                  radius: 24, // Define el radio del avatar.
                  backgroundImage: AssetImage(chat.image), // Carga la imagen del avatar desde los recursos.
                ),
                if (chat.isActive) // Verifica si el usuario está activo.
                  Positioned( // Posiciona el indicador de estado activo en la parte inferior derecha del avatar.
                    right: 0, // Alinea el indicador al borde derecho.
                    bottom: 0, // Alinea el indicador al borde inferior.
                    child: Container( // Contenedor que actúa como el indicador de estado.
                      height: 16, // Altura del indicador.
                      width: 16, // Ancho del indicador.
                      decoration: BoxDecoration( // Aplica estilos al indicador.
                        color: kPrimaryColor, // Color del indicador de estado.
                        shape: BoxShape.circle, // Define el indicador como un círculo.
                        border: Border.all( // Borde alrededor del indicador.
                            color: Theme.of(context).scaffoldBackgroundColor, // Color del borde que coincide con el fondo del Scaffold.
                            width: 3), // Ancho del borde.
                      ),
                    ),
                  )
              ],
            ),
            Expanded( // Expande el contenido restante para ocupar todo el espacio disponible.
              child: Padding( // Añade espacio horizontal entre el avatar y el texto.
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), // Padding horizontal constante.
                child: Column( // Organiza el nombre y el último mensaje en una columna.
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos a la izquierda.
                  children: [
                    Text( // Muestra el nombre del usuario del chat.
                      chat.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500), // Estilo de texto con tamaño 16 y peso medio.
                    ),
                    const SizedBox(height: 8), // Espacio vertical entre el nombre y el último mensaje.
                    Opacity( // Ajusta la opacidad del texto del último mensaje.
                      opacity: 0.64, // Reduce la opacidad al 64%.
                      child: Text( // Muestra el último mensaje del chat.
                        chat.lastMessage,
                        maxLines: 1, // Limita el texto a una sola línea.
                        overflow: TextOverflow.ellipsis, // Muestra "..." si el texto es demasiado largo.
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity( // Ajusta la opacidad del texto que muestra la hora del último mensaje.
              opacity: 0.64, // Reduce la opacidad al 64%.
              child: Text(chat.time), // Muestra la hora del último mensaje.
            ),
          ],
        ),
      ),
    );
  }
}
