import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importa Firebase Core
import 'firebase_options.dart'; // Importa el archivo que generó flutterfire configure

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializa Firebase para la plataforma actual (Android, Web, Windows, etc.)
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalog App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Películas'),
        ),
        body: const Center(
          child: Text('¡Firebase conectado con éxito!'),
        ),
      ),
    );
  }
}