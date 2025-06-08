import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/name_example/user_settings.dart';
import 'package:provider_example/providers/user_provider.dart';

class NameHomepage extends StatelessWidget {
  const NameHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Name Provider Example",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Consumer<UserProvider>(
          builder:
              (BuildContext context, nameProvider, Widget? child) => Text(
                nameProvider.userName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserSettings()),
          );
        },
        child: Icon(Icons.settings, color: Colors.white),
      ),
    );
  }
}
