import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationForm extends StatelessWidget {
  final GlobalKey<FormState> formKey; 

  const RegistrationForm({
    super.key, 
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) => Form(
    key: formKey,
    child: Column(
      children: [
        InputField(
          label: Strings.username,
          hint: Strings.usernameHint,
          keyboardType: TextInputType.name,
          onChanged: (data) => context.read(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Username is required';
            }
            return null;
          },
        ),

        const SizedBox(height: Dimens.s16),

        InputField(
          label: Strings.email,
          hint: Strings.emailHint,
          keyboardType: TextInputType.emailAddress,
          onChanged: (data) => context.read(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            if (!emailRegex.hasMatch(value)) {
              return 'Enter a valid email';
            }
            return null;
          },
        ),

        const SizedBox(height: Dimens.s16),

        InputField(
          label: Strings.mobileNumber,
          hint: Strings.mobileNumberHint,
          keyboardType: TextInputType.number,
          onChanged: (data) => context.read(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mobile number is required';
            }
            return null;
          },
        ),

        const SizedBox(height: Dimens.s16),

        InputField(
          label: Strings.password,
          hint: Strings.passwordHint,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (data) => context.read(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
      ],
    ),
  );
}