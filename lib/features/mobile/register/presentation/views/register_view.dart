import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/custom_password_text_field.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/register_appbar.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/form_item.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0A071E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterAppbar(),
              SizedBox(
                height: 30,
              ),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
