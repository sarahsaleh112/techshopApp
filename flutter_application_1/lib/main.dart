import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
   await dotenv.load(fileName: ".env");

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: dotenv.env['supabaseURL']!,
    anonKey: dotenv.env['supabaseKey']!,
  );

 
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supabase Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Welcome(), 
    );
  }
}