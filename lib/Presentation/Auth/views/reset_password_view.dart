import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Auth/screens/default_field.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newPasswordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    MathUtils.init(context);

    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "Reset Password"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            Text(
              "Reset Password",
              style: TextStyles.headingH4SemiBold
                  .copyWith(color: Pallete.neutral100),
            ),
            Text(
              "Your new password must be different from the previously used password",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: const Color(0xFF878787)),
            ),
            const Gap(32),
            DefaultField(
              controller: newPasswordController,
              hintText: "New Password",
              labelText: "New Password",
              isPasswordField: true,
            ),
            const Gap(8),
            Text(
              "Must be at least 8 character",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: const Color(0xFF878787)),
            ),
            const Gap(16),
            DefaultField(
              controller: confirmPasswordController,
              hintText: "New Password",
              labelText: "New Password",
              isPasswordField: true,
            ),
            const Gap(8),
            Text(
              "Both password must match",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: const Color(0xFF878787)),
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
