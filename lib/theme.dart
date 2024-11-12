import 'constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter
import 'package:google_fonts/google_fonts.dart'; // Importa el paquete de fuentes de Google

// Función que define y retorna el tema claro de la aplicación
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith( // Copia y modifica el tema claro predeterminado de Flutter
    primaryColor: kPrimaryColor, // Establece el color primario
    scaffoldBackgroundColor: Colors.white, // Define el color de fondo del scaffold como blanco
    appBarTheme: appBarTheme, // Aplica un tema personalizado al AppBar
    iconTheme: const IconThemeData(color: kContentColorLightTheme), // Define el color de los íconos en el tema claro
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorLightTheme), // Aplica la fuente "Inter" a los textos y establece el color del cuerpo
    colorScheme: const ColorScheme.light( // Define el esquema de colores para el tema claro
      primary: kPrimaryColor, // Color primario
      secondary: kSecondaryColor, // Color secundario
      error: kErrorColor, // Color de error
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData( // Configura el tema de la barra de navegación inferior
      backgroundColor: Colors.white, // Color de fondo de la barra de navegación inferior
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7), // Color de los ítems seleccionados
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32), // Color de los ítems no seleccionados
      selectedIconTheme: const IconThemeData(color: kPrimaryColor), // Color del ícono seleccionado
      showUnselectedLabels: true, // Muestra las etiquetas de los ítems no seleccionados
    ),
  );
}

// Función que define y retorna el tema oscuro de la aplicación
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith( // Copia y modifica el tema oscuro predeterminado de Flutter
    primaryColor: kPrimaryColor, // Establece el color primario
    scaffoldBackgroundColor: kContentColorLightTheme, // Define el color de fondo del scaffold
    appBarTheme: appBarTheme.copyWith(backgroundColor: kContentColorLightTheme), // Aplica un tema personalizado al AppBar con un color de fondo específico
    iconTheme: const IconThemeData(color: kContentColorDarkTheme), // Define el color de los íconos en el tema oscuro
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorDarkTheme), // Aplica la fuente "Inter" a los textos y establece el color del cuerpo
    colorScheme: const ColorScheme.dark().copyWith( // Define el esquema de colores para el tema oscuro
      primary: kPrimaryColor, // Color primario
      secondary: kSecondaryColor, // Color secundario
      error: kErrorColor, // Color de error
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData( // Configura el tema de la barra de navegación inferior
      backgroundColor: kContentColorLightTheme, // Color de fondo de la barra de navegación inferior
      selectedItemColor: Colors.white70, // Color de los ítems seleccionados
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32), // Color de los ítems no seleccionados
      selectedIconTheme: const IconThemeData(color: kPrimaryColor), // Color del ícono seleccionado
      showUnselectedLabels: true, // Muestra las etiquetas de los ítems no seleccionados
    ),
  );
}

// Configuración personalizada para el AppBar
const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0); // El título no se centra y no hay sombra (elevación) en el AppBar
