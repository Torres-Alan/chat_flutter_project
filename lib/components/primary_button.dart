import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter
import '../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'

// Definición de un widget personalizado llamado PrimaryButton
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key, // Clave opcional para identificar el widget en la jerarquía
    required this.text, // Texto que se mostrará en el botón
    required this.press, // Función que se ejecutará al presionar el botón
    this.color = kPrimaryColor, // Color del botón, por defecto es kPrimaryColor
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75), // Padding del botón, con un valor predeterminado
  });

  // Propiedades del widget
  final String text; // Texto del botón
  final VoidCallback press; // Función que se ejecuta cuando el botón es presionado
  final Color color; // Color de fondo del botón
  final EdgeInsets padding; // Padding interno del botón

  @override
  Widget build(BuildContext context) {
    // Construye el widget MaterialButton con la configuración proporcionada
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)), // Bordes redondeados con un radio de 40
      ),
      padding: padding, // Espaciado interno del botón
      color: color, // Color de fondo del botón
      minWidth: double.infinity, // El ancho mínimo del botón ocupa todo el ancho disponible
      onPressed: press, // Asigna la función de callback para cuando el botón es presionado
      child: Text(
        text, // Muestra el texto dentro del botón
        style: const TextStyle(color: Colors.white), // Estilo del texto, con color blanco
      ),
    );
  }
}
