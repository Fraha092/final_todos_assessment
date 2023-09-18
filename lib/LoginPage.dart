import 'package:final_todos_assessment/models/User%20model.dart';
import 'package:final_todos_assessment/models/adapter.dart';
import 'package:final_todos_assessment/repositories/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userRepository = UserRepository();
    final userController = useProvider(userProvider);
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                final user = await userRepository.login(usernameController.text, passwordController.text);
                userController.state = user;
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}