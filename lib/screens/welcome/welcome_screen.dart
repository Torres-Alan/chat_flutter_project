// Importa las constantes definidas en el proyecto, como colores y tamaños de padding
import '../../constants.dart';

// Importa la pantalla de inicio de sesión o registro
import '../signinOrSignUp/signin_or_signup_screen.dart';

// Importa la librería principal de Flutter para construir interfaces de usuario
import 'package:flutter/material.dart';

// Define la clase WelcomeScreen como un widget sin estado (StatelessWidget)
class WelcomeScreen extends StatelessWidget {
  // Constructor de la clase WelcomeScreen
  const WelcomeScreen({super.key});

  // Método build que construye la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold que estructura la pantalla
    return Scaffold(
      // El widget SafeArea asegura que el contenido no se superponga con las áreas del sistema
      body: SafeArea(
        // Column organiza los widgets en una disposición vertical
        child: Column(
          children: [
            // Espaciador que ocupa espacio proporcional (2 partes)
            const Spacer(flex: 2),
            // Imagen de bienvenida cargada desde los activos (assets)
            Image.asset("assets/images/welcome_image.png"),
            // Espaciador que ocupa espacio proporcional (3 partes)
            const Spacer(flex: 3),
            // Texto de bienvenida centrado con estilo de texto personalizado
            Text(
              "Welcome to our freedom \nmessaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            // Espaciador que ocupa una sola parte
            const Spacer(),
            // Texto descriptivo centrado con color opaco
            Text(
              "Freedom talk any person of your \nmother language.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .color!
                    .withOpacity(0.64),
              ),
            ),
            // Espaciador que ocupa espacio proporcional (3 partes)
            const Spacer(flex: 3),
            // Widget FittedBox para ajustar su contenido (el botón de texto)
            FittedBox(
              // Botón de texto que permite navegar a la pantalla de inicio de sesión o registro
              child: TextButton(
                  // Acción al presionar el botón: navega a SigninOrSignupScreen
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninOrSignupScreen(),
                        ),
                      ),
                  // Contenido del botón: un Row con texto y un icono
                  child: Row(
                    children: [
                      // Texto "Skip" con estilo personalizado
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .color!
                                  .withOpacity(0.8),
                            ),
                      ),
                      // Espaciado entre el texto y el icono
                      const SizedBox(width: kDefaultPadding / 4),
                      // Icono de flecha hacia adelante con color opaco
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .color!
                            .withOpacity(0.8),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
