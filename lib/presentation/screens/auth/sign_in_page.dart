import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:risovach/presentation/routes/routes.gr.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onPressed() {}

  void pushToSignUp() {
    // Navigator.pushNamed(context, '/sign_up');
    context.router.push(SignUpRoute());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Вход'),
          TextField(controller: emailController),
          TextField(controller: passwordController),
          ElevatedButton(onPressed: onPressed, child: Text('Вход')),
          ElevatedButton(onPressed: pushToSignUp, child: Text('Регистрация')),
        ],
      ),
    );
  }
}
