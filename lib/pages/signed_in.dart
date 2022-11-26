import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignedIn extends StatefulWidget {
  final String name;
  final String password;
  SignedIn({required this.name, required this.password, super.key});

  @override
  State<SignedIn> createState() => _SignedInState();
}

class _SignedInState extends State<SignedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signed In"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 240),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Welcome ${widget.name}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Icon(
                Icons.check_circle,
                color: Color.fromARGB(255, 34, 211, 39),
                size: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
