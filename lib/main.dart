import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:telegram_clone/view/splash_screen/splash_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
  final box=await Hive.openBox('AppData');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
