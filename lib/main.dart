import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/name_example/name_homepage.dart';
import 'package:provider_example/pages/selection_page.dart';
import 'package:provider_example/providers/number_provider.dart';
import 'package:provider_example/providers/user_provider.dart';


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
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => NumberProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Provider Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SelectionPage(),
      ),
    );
  }
}
