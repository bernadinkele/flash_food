import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Auth/screens/default_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    MathUtils.init(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
          top: MediaQuery.of(context).viewPadding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Text(
              "Forgot password?",
              style: TextStyles.headingH4SemiBold
                  .copyWith(color: Pallete.neutral100),
            ),
            const Gap(8),
            Text(
              "Enter your email address and we’ll send you confirmation code to reset your password",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: Pallete.neutral60),
            ),
            const Gap(32),
            DefaultField(
              hintText: "Enter Email",
              controller: emailController,
              labelText: "Email Address",
            ),
            const Spacer(),
            const DefaultButton(
              btnContent: "Continue",
            ),
            const Gap(32)
          ],
        ),
      ),
    );
  }
}
