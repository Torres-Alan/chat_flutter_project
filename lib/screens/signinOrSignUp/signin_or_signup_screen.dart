import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter

import '../../components/primary_button.dart'; // Importa el widget PrimaryButton
import '../../constants.dart'; // Importa las constantes definidas en el archivo 'constants.dart'
import '../chats/chats_screen.dart'; // Importa la pantalla de chats

// Pantalla SigninOrSignupScreen que permite al usuario iniciar sesión o registrarse
class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // SafeArea asegura que el contenido no se superponga a las áreas seguras del dispositivo
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), // Padding horizontal
          child: Column(
            children: [
              const Spacer(flex: 2), // Espaciador flexible para agregar espacio
              Image.asset(
                // Muestra un logo diferente según el brillo de la plataforma (modo claro u oscuro)
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png" // Logo para el modo claro
                    : "assets/images/Logo_dark.png", // Logo para el modo oscuro
                height: 146, // Altura del logo
              ),
              const Spacer(), // Espaciador flexible
              PrimaryButton(
                text: "Sign In", // Texto del botón "Sign In"
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatsScreen(), // Navega a la pantalla de chats
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5), // Espaciado entre los botones
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary, // Color del botón "Sign Up"
                text: "Sign Up", // Texto del botón "Sign Up"
                press: () {}, // Acción al presionar el botón (vacío por ahora)
              ),
              const Spacer(flex: 2), // Espaciador flexible para agregar espacio
            ],
          ),
        ),
      ),
    );
  }
}
