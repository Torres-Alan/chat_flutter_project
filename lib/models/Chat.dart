// Clase Chat que define las propiedades de un chat individual
class Chat {
  final String name, lastMessage, image, time; // Nombre del contacto, último mensaje, imagen y hora
  final bool isActive; // Estado del contacto (activo o inactivo)

  // Constructor de la clase Chat con valores predeterminados
  Chat({
    this.name = '', // Nombre predeterminado vacío
    this.lastMessage = '', // Último mensaje predeterminado vacío
    this.image = '', // Imagen predeterminada vacía
    this.time = '', // Hora predeterminada vacía
    this.isActive = false, // Estado predeterminado: inactivo
  });
}

// Lista de datos de ejemplo para chats
List chatsData = [
  Chat(
    name: "Jenny Wilson", // Nombre del contacto
    lastMessage: "Hope you are doing well...", // Último mensaje enviado o recibido
    image: "assets/images/user.png", // Ruta de la imagen del contacto
    time: "3m ago", // Tiempo transcurrido desde el último mensaje
    isActive: false, // Contacto no está activo
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true, // Contacto está activo
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Jacob Jones",
    lastMessage: "You’re welcome :)",
    image: "assets/images/user_4.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Albert Flores",
    lastMessage: "Thanks",
    image: "assets/images/user_5.png",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Jenny Wilson",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Hello my friend!, Looking for some fun?",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
];
