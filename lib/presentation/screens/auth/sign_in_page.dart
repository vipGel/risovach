import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:risovach/core/widgets/background_image.dart';
import 'package:risovach/core/widgets/primary_button.dart';
import 'package:risovach/core/widgets/text_field.dart';
import 'package:risovach/presentation/bloc/sign_in/sign_in_cubit.dart';
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
  final formKey = GlobalKey<FormState>();

  void onPressed() {
    context.read<SignInCubit>().signUp(
      emailController.text,
      passwordController.text,
    );
  }

  void pushToSignUp() {
    context.router.push(SignUpRoute());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignInCubit>().state;
    return Scaffold(
      body: BackgroundImage(
        child: Padding(
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
                    const Text('Вход'),
                    TextFieldWidget(
                      readOnly: state is SignInStateLoading,
                      controller: emailController,
                      label: 'e-mail',
                      hint: 'Введите электронную почту',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите вашу электронную почту';
                        } else if (!value.contains('@')) {
                          return 'Введите корректный e-mail';
                        }
                        return null;
                      },
                    ),
                    TextFieldWidget(
                      readOnly: state is SignInStateLoading,
                      obscureText: true,
                      controller: passwordController,
                      label: 'Подтверждение пароля',
                      hint: 'Введите пароль',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите ваш пароль';
                        } else if (value.length < 8 || value.length > 16) {
                          return '';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    readOnly: state is SignInStateLoading,
                    onPressed: onPressed,
                    label: 'Вход',
                  ),
                  PrimaryButton(
                    readOnly: state is SignInStateLoading,
                    onPressed: pushToSignUp,
                    label: 'Регистрация',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
