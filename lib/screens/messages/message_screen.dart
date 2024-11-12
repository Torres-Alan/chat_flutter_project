import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import 'components/body.dart'; // Importa el widget Body desde la carpeta de componentes

// Definición de la pantalla de mensajes como un widget sin estado
class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Construye un Scaffold que define la estructura de la pantalla
    return Scaffold(
      appBar: buildAppBar(), // Llama a la función buildAppBar para construir el AppBar
      body: const Body(), // Muestra el contenido principal de la pantalla usando el widget Body
    );
  }

  // Función que construye un AppBar personalizado
  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false, // Desactiva el botón de retroceso predeterminado
      title: const Row(
        // Contenido del AppBar dispuesto en una fila
        children: [
          BackButton(), // Botón de retroceso
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"), // Imagen de avatar del usuario
          ),
          SizedBox(width: kDefaultPadding * 0.75), // Espaciado horizontal
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinea el contenido al inicio
            children: [
              Text(
                "Kristin Watson", // Nombre del usuario
                style: TextStyle(fontSize: 16), // Estilo de texto con tamaño de fuente 16
              ),
              Text(
                "Active 3m ago", // Estado de actividad del usuario
                style: TextStyle(fontSize: 12), // Estilo de texto con tamaño de fuente 12
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.local_phone), // Ícono de teléfono
          onPressed: () {}, // Acción vacía para el botón de llamada
        ),
        IconButton(
          icon: const Icon(Icons.videocam), // Ícono de cámara de video
          onPressed: () {}, // Acción vacía para el botón de videollamada
        ),
        const SizedBox(width: kDefaultPadding / 2), // Espaciado adicional a la derecha
      ],
    );
  }
}
