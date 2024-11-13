// Importa las constantes definidas en el proyecto, como colores y tamaños de padding
import '../../constants.dart';

// Importa la librería principal de Flutter para construir interfaces de usuario
import 'package:flutter/material.dart';

// Importa el archivo donde se encuentra el cuerpo principal de la pantalla (Body)
import 'components/body.dart';

// Define la clase ChatsScreen como un widget con estado (StatefulWidget)
class ChatsScreen extends StatefulWidget {
  // Constructor de la clase ChatsScreen
  const ChatsScreen({super.key});

  // Crea el estado para el widget ChatsScreen
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

// Define el estado asociado con ChatsScreen
class _ChatsScreenState extends State<ChatsScreen> {
  // Variable para llevar el seguimiento del índice seleccionado en la barra de navegación
  int _selectedIndex = 1;

  // Método build que construye la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold que estructura la pantalla
    return Scaffold(
      // AppBar personalizado con el método buildAppBar
      appBar: buildAppBar(),
      // Cuerpo de la pantalla, que muestra el widget Body
      body: const Body(),
      // Botón flotante de acción (FloatingActionButton)
      floatingActionButton: FloatingActionButton(
        // Define la acción al presionar el botón (vacío por ahora)
        onPressed: () {},
        // Color de fondo del botón, definido en las constantes
        backgroundColor: kPrimaryColor,
        // Icono del botón flotante
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      // Barra de navegación inferior, construida con buildBottomNavigationBar
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  // Método que construye la barra de navegación inferior
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      // Tipo de barra de navegación: con elementos fijos
      type: BottomNavigationBarType.fixed,
      // Índice actual del elemento seleccionado
      currentIndex: _selectedIndex,
      // Acción al seleccionar un elemento de la barra
      onTap: (value) {
        // Actualiza el estado con el nuevo índice seleccionado
        setState(() {
          _selectedIndex = value;
        });
      },
      // Lista de elementos en la barra de navegación
      items: const [
        // Elemento de la barra: "Chats" con ícono de messenger
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        // Elemento de la barra: "People" con ícono de personas
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        // Elemento de la barra: "Calls" con ícono de llamada
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        // Elemento de la barra: "Profile" con un avatar circular
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14, // Tamaño del avatar
            backgroundImage: AssetImage("assets/images/user_2.png"), // Imagen del avatar
          ),
          label: "Profile",
        ),
      ],
    );
  }

  // Método que construye el AppBar
  AppBar buildAppBar() {
    return AppBar(
      // Color de fondo del AppBar, definido en las constantes
      backgroundColor: kPrimaryColor,
      // Elimina el botón de retroceso automático
      automaticallyImplyLeading: false,
      // Título del AppBar
      title: const Text("Chats"),
      // Lista de acciones en el AppBar
      actions: [
        // Botón de búsqueda con un ícono
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {}, // Acción al presionar el ícono (vacío por ahora)
        ),
      ],
    );
  }
}
