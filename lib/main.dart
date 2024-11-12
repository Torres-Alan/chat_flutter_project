import 'screens/welcome/welcome_screen.dart'; // Importa la pantalla de bienvenida desde la carpeta de pantallas
import 'theme.dart'; // Importa el archivo de temas donde se definen los temas claro y oscuro
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

// Función principal que inicia la aplicación
void main() {
  runApp(const MyApp()); // Ejecuta la aplicación con el widget MyApp como raíz
}

// Definición de la clase MyApp, que es un widget sin estado
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor de la clase con una clave de superclase

  @override
  Widget build(BuildContext context) {
    // Método que construye el widget de la aplicación
    return MaterialApp(
      title: 'The Flutter Way', // Título de la aplicación
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de depuración en la esquina superior derecha
      theme: lightThemeData(context), // Define el tema claro para la aplicación
      darkTheme: darkThemeData(context), // Define el tema oscuro para la aplicación
      themeMode: ThemeMode.light, // Establece el tema por defecto en modo claro
      home: const WelcomeScreen(), // Define la pantalla de inicio de la aplicación (WelcomeScreen)
    );
  }
}
