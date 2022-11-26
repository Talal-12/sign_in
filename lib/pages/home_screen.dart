import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  String name = "";
  String password = "12345";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in")),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                labelText: 'Type your name',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                labelText: 'Type your password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                    passwordController.text.toString() == password
                        ? context.go("/signedin", extra: name)
                        : null;
                  });
                },
                child: Text("Login")),
          )
        ],
      ),
    );
  }
}
