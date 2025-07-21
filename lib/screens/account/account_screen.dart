
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 12.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Account"),
          ElevatedButton(
            onPressed: (){},
            child: Text("Log in"),
          ),
          ElevatedButton(
            onPressed: (){},
            child: Text("Create account"),
          ),
        ],
      ),
    );
  }
}