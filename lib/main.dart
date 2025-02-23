import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/widgets/menubar.dart';
import 'theme/theme_provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, 
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const BottomBar(),
    );
  }
}
