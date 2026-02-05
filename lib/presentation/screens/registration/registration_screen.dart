
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.s20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: Dimens.s100),
            
            LoginLogo(),
            
            SizedBox(height: Dimens.s20),
            
            RegistrationForm(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.s20,
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.home);
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: const WidgetStatePropertyAll(AppColors.green2BDB8F),
              ),
              child: Text(
                Strings.register,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ),
        const SizedBox(height: Dimens.s20),
      ],
    ),
  );
}
