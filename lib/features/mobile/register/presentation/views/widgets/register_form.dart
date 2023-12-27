import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/custoum_botton_app.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/form_item.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String confirmPassword = '';
  bool agreeToConditions = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: SizedBox(
          width: 302.22,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FormItem(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value ?? '';
                },
                header: 'Email',
                label: 'ex: m@gmail.com',
                isPass: false,
              ),
              FormItem(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  password = value ?? '';
                },
                header: 'Password',
                label: 'ex:!dfg',
                isPass: true,
              ),
              FormItem(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (value) {
                  confirmPassword = value ?? '';
                },
                header: 'Confirm Password',
                label: '',
                isPass: true,
              ),
              Row(
                children: [
                  Checkbox(
                    value: agreeToConditions,
                    onChanged: (value) {
                      setState(() {
                        agreeToConditions = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              CustomBottonApp(
                  isFilled: true,
                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      if (agreeToConditions) {
                        formKey.currentState?.save();

                        print('Email: $email');
                        print('Password: $password');
                      } else {
                        print('Please agree to the terms and conditions');
                      }
                    }
                  },
                  text: 'Register')
            ],
          ),
        ));
  }
}
