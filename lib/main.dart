import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/provider/auth_provider.dart';
import 'package:provider_learn/provider/favourite_provider.dart';

import 'home_screen.dart';
import 'provider/count_provider.dart';
import 'provider/example_provider.dart';
import 'provider/theme_changer_provider.dart';
import 'screens/count_example.dart';
import 'screens/dark_theme.dart';
import 'screens/example_one_screen.dart';
import 'screens/favourite/favourite_screen.dart';
import 'screens/login_screen.dart';
import 'screens/value_notify_listener.dart';
import 'stateful_widget_screen.dart';
import 'why_provider_screen.dart';

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
    ChangeNotifierProvider(create: (_)=>CountProvider()),
    ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
    ChangeNotifierProvider(create: (_)=>FavouriteItemProvider()),
    ChangeNotifierProvider(create: (_)=>ThemeChanger()),
    ChangeNotifierProvider(create: (_)=>AuthProvider())
   ],
   child: Builder(builder: (BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: themeChanger.themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.red,
        // primaryColor: Colors.red
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Colors.teal
        // ),
        iconTheme: IconThemeData(color: Colors.pink)
      ),
      home: LoginScreen(),
    );
   }));
    
  
      
      
    
   
  }
}

