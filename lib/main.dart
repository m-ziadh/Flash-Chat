import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.Id,
      routes: {
        WelcomeScreen.Id : (context) => WelcomeScreen(),
        RegistrationScreen.Id : (context) => RegistrationScreen(),
        LoginScreen.Id : (context) => LoginScreen(),
        ChatScreen.Id : (context) => ChatScreen(),
      },
    );
  }
}
