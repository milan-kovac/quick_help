import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_help/pages/auth.new.account.page.dart';
import 'package:quick_help/utils/app.color.utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // #Fullscreen config
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // #No rotate screan config
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Help',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, primary: darkOrange),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: AuthNewAccountPage(),
    );
  }
}
