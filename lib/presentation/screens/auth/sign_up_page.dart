import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:risovach/core/widgets/primary_button.dart';
import 'package:risovach/core/widgets/text_field.dart';
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
  final formKey = GlobalKey<FormState>();

  void onPressed() {
    context.read<SignUpCubit>().signUp(
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignUpCubit>().state;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Регистрация'),
                  TextFieldWidget(
                    readOnly: state is SignUpStateLoading,

                    controller: nameController,
                    label: 'Имя',
                    hint: 'Введите ваше имя',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите ваше имя';
                      }
                      return null;
                    },
                  ),
                  TextFieldWidget(
                    readOnly: state is SignUpStateLoading,
                    controller: emailController,
                    label: 'e-mail',
                    hint: 'Ваша электронная почта',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите вашу электронную почту';
                      } else if (!value.contains('@')) {
                        return 'Введите корректный e-mail';
                      }
                      return null;
                    },
                  ),
                  Divider(),
                  TextFieldWidget(
                    readOnly: state is SignUpStateLoading,
                    controller: passwordController,
                    label: 'Пароль',
                    hint: '8-16 символов',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите ваш пароль';
                      } else if (value.length < 8 || value.length > 16) {
                        return '';
                      }
                      return null;
                    },
                  ),
                  TextFieldWidget(
                    readOnly: state is SignUpStateLoading,
                    controller: passwordConfirmController,
                    label: 'Подтверждение пароля',
                    hint: '8-16 символов',
                    obscureText: true,
                    validator: (value) {
                      if (value == passwordController.text) {
                        return 'Пароли не совпадают';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            PrimaryButton(
              readOnly: state is SignUpStateLoading,
              onPressed: onPressed,
              label: 'Зарегистрироваться',
            ),
          ],
        ),
      ),
    );
  }
}
