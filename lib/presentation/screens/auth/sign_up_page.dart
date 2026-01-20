import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:risovach/presentation/bloc/sign_up/sign_up_cubit.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  void onPressed() {
    context.read<SignUpCubit>().signUp(
      emailController.text,
      passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<SignUpCubit>().state;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Регистрация'),
          TextField(controller: nameController),
          TextField(controller: emailController),
          Divider(),
          TextField(controller: passwordController),
          TextField(controller: passwordConfirmController),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Зарегистрироваться'),
          ),
        ],
      ),
    );
  }
}
