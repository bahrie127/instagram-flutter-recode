import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter_recode/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter_recode/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter_recode/responsive/web_screen_layout.dart';
import 'package:instagram_flutter_recode/screens/login_screen.dart';
import 'package:instagram_flutter_recode/screens/signup_screen.dart';
import 'package:instagram_flutter_recode/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyB28fHsYE_YnjMCB_3Q2x-k9B_2bi83oRw',
        appId: '1:882091794168:web:216ff38a849844f4b3e50d',
        messagingSenderId: '882091794168',
        projectId: 'instagram-flutter-recode',
        storageBucket: 'instagram-flutter-recode.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intagram flutter clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
      home: LoginScreen(),
    );
  }
}
