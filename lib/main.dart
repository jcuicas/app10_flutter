import 'package:app10/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://qejyahaldesvaeuohnjj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFlanlhaGFsZGVzdmFldW9obmpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNTkxNTIsImV4cCI6MjAyOTczNTE1Mn0.bk3R6RYINBKnFRd3dbd0Sfs6dBozgYVQys8LIYoEmAk',
  );

  runApp(const MyApp10());
}

class MyApp10 extends StatelessWidget {
  const MyApp10({super.key});

  @override
  Widget build(BuildContext context) {
    const String tiutloApp = 'Listado de clientes';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: HomeScreen(
        titulo: tiutloApp,
      ),
    );
  }
}
