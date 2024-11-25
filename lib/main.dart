import 'package:flutter/material.dart';
import 'package:formfield/presentation/provider/authprovider.dart';
import 'package:formfield/presentation/screens/loginscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'formdesigne',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Loginscreen(),
    ),
    );
    
  }
}
