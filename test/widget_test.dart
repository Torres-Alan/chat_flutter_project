import 'package:chat/main.dart'; // Importa el archivo main.dart del proyecto
import 'package:flutter/material.dart'; // Importa la biblioteca de Material Design de Flutter
import 'package:flutter_test/flutter_test.dart'; // Importa el paquete de pruebas de Flutter

void main() {
  // Define una prueba de widgets llamada 'Counter increments smoke test'
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye el widget MyApp y ejecuta un fotograma
    await tester.pumpWidget(const MyApp());

    // Verifica que el contador comience en 0
    expect(find.text('0'), findsOneWidget); // Espera encontrar un widget que muestre el texto '0'
    expect(find.text('1'), findsNothing); // Espera no encontrar un widget que muestre el texto '1'

    // Simula un toque en el icono '+' y ejecuta un fotograma
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador haya incrementado
    expect(find.text('0'), findsNothing); // Espera no encontrar un widget que muestre el texto '0'
    expect(find.text('1'), findsOneWidget); // Espera encontrar un widget que muestre el texto '1'
  });
}
