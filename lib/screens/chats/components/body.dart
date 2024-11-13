// Importa el archivo donde está definido el botón personalizado FillOutlineButton
import '../../../components/filled_outline_button.dart';

// Importa las constantes definidas en el proyecto, como colores o tamaños de padding
import '../../../constants.dart';

// Importa el modelo de datos para los chats
import '../../../models/chat.dart';

// Importa la pantalla de mensajes para navegar a ella cuando se presiona un chat
import '../../messages/message_screen.dart';

// Importa la librería principal de Flutter
import 'package:flutter/material.dart';

// Importa el archivo donde está definida la tarjeta personalizada para mostrar un chat
import 'chat_card.dart';

// Define la clase Body que es un widget sin estado (StatelessWidget)
class Body extends StatelessWidget {
  // Constructor de la clase Body
  const Body({super.key});

  // Método build que construye la interfaz de usuario del widget
  @override
  Widget build(BuildContext context) {
    // Retorna un widget Column que organiza sus hijos en una columna vertical
    return Column(
      children: [
        // Widget Container que sirve para añadir un fondo de color y padding
        Container(
          // Define el padding del contenedor en los lados izquierdo, derecho y la parte inferior
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          // Aplica un color de fondo al contenedor usando una constante
          color: kPrimaryColor,
          // Crea una fila (Row) para organizar los botones horizontalmente
          child: Row(
            children: [
              // Botón personalizado FillOutlineButton para "Recent Message"
              FillOutlineButton(press: () {}, text: "Recent Message"),
              // Espacio entre los botones usando SizedBox
              const SizedBox(width: kDefaultPadding),
              // Otro botón FillOutlineButton pero sin relleno (isFilled: false)
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        // Widget Expanded que toma el espacio restante de la columna
        Expanded(
          // ListView.builder crea una lista de elementos que se generan dinámicamente
          child: ListView.builder(
            // Define la cantidad de elementos en la lista como la longitud de chatsData
            itemCount: chatsData.length,
            // Define cómo construir cada elemento de la lista
            itemBuilder: (context, index) => ChatCard(
              // Pasa el chat correspondiente a la tarjeta (ChatCard)
              chat: chatsData[index],
              // Define la acción al presionar un chat: navega a MessagesScreen
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  // Construye la pantalla de mensajes (MessagesScreen)
                  builder: (context) => const MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
