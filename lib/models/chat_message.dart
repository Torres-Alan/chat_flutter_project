// Definición de un enumerador ChatMessageType para identificar el tipo de mensaje
enum ChatMessageType { text, audio, image, video }

// Definición de un enumerador MessageStatus para identificar el estado del mensaje
enum MessageStatus { notSent, notView, viewed }

// Clase ChatMessage que define las propiedades de un mensaje de chat
class ChatMessage {
  final String text; // Texto del mensaje
  final ChatMessageType messageType; // Tipo de mensaje (texto, audio, imagen o video)
  final MessageStatus messageStatus; // Estado del mensaje (no enviado, no visto, visto)
  final bool isSender; // Indica si el mensaje fue enviado por el usuario actual

  // Constructor de la clase ChatMessage con parámetros opcionales y requeridos
  ChatMessage({
    this.text = '', // Texto por defecto vacío si no se proporciona
    required this.messageType, // Tipo de mensaje es obligatorio
    required this.messageStatus, // Estado del mensaje es obligatorio
    required this.isSender, // Indicador de remitente es obligatorio
  });
}

// Lista de mensajes de ejemplo para la demostración
List demeChatMessages = [
  ChatMessage(
    text: "Hi Lee,", // Mensaje de texto
    messageType: ChatMessageType.text, // Tipo de mensaje: texto
    messageStatus: MessageStatus.viewed, // Estado del mensaje: visto
    isSender: false, // No fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "Hello, How are you?", // Mensaje de texto
    messageType: ChatMessageType.text, // Tipo de mensaje: texto
    messageStatus: MessageStatus.viewed, // Estado del mensaje: visto
    isSender: true, // Fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "", // Mensaje vacío (representando un audio)
    messageType: ChatMessageType.audio, // Tipo de mensaje: audio
    messageStatus: MessageStatus.viewed, // Estado del mensaje: visto
    isSender: false, // No fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "", // Mensaje vacío (representando un video)
    messageType: ChatMessageType.video, // Tipo de mensaje: video
    messageStatus: MessageStatus.viewed, // Estado del mensaje: visto
    isSender: true, // Fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "Error happend", // Mensaje de texto indicando un error
    messageType: ChatMessageType.text, // Tipo de mensaje: texto
    messageStatus: MessageStatus.notSent, // Estado del mensaje: no enviado
    isSender: true, // Fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "This looks great man!!", // Mensaje de texto
    messageType: ChatMessageType.text, // Tipo de mensaje: texto
    messageStatus: MessageStatus.viewed, // Estado del mensaje: visto
    isSender: false, // No fue enviado por el usuario actual
  ),
  ChatMessage(
    text: "Glad you like it", // Mensaje de texto
    messageType: ChatMessageType.text, // Tipo de mensaje: texto
    messageStatus: MessageStatus.notView, // Estado del mensaje: no visto
    isSender: true, // Fue enviado por el usuario actual
  ),
];
