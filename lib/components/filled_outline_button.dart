import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter
import '../constants.dart'; // Importa el archivo de constantes que contiene colores y estilos definidos

// Definición de un widget personalizado llamado FillOutlineButton
class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    super.key,
    this.isFilled = true, // Propiedad que determina si el botón está lleno o es transparente
    required this.press, // Función de callback que se ejecuta al presionar el botón
    required this.text, // Texto que se mostrará en el botón
  });

  // Propiedades del widget
  final bool isFilled; // Booleano que indica si el botón debe estar lleno o transparente
  final VoidCallback press; // Función que se ejecuta cuando se presiona el botón
  final String text; // Texto que se muestra en el botón

  @override
  Widget build(BuildContext context) {
    // Construye el widget MaterialButton con la configuración proporcionada
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Define un borde redondeado con un radio de 30
        side: const BorderSide(color: Colors.white), // Borde blanco alrededor del botón
      ),
      elevation: isFilled ? 2 : 0, // Define la elevación del botón si está lleno (2) o transparente (0)
      color: isFilled ? Colors.white : Colors.transparent, // Define el color del botón según isFilled
      onPressed: press, // Asigna la función de callback para cuando el botón es presionado
      child: Text(
        text, // Muestra el texto dentro del botón
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white, // Color del texto según isFilled
          fontSize: 12, // Tamaño de la fuente del texto
        ),
      ),
    );
  }
}
