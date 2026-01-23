import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risovach/core/widgets/background_image.dart';
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
    if (!formKey.currentState!.validate()) return;
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlowText(
                      blurRadius: 5,
                      glowColor: Color.fromRGBO(137, 36, 231, 1),
                      'Регистрация',
                      style: GoogleFonts.pressStart2p().copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        height: 0.5,
                        color: Color.fromRGBO(64, 64, 64, 1),
                      ),
                    ),
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
                          return 'Ваш пароль должен содержать от 8 до 16 символов';
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
      ),
    );
  }
}
