import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    MathUtils.init(context);

    return Scaffold(
      appBar:buildAppBar(
        buildContext: context,
        screenTitle: "OTP"
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            Text(
              "Email verification",
              style: TextStyles.headingH4SemiBold
                  .copyWith(color: Pallete.neutral100),
            ),
            Text(
              "Enter the verification code we send you on : Alberts******@gmail.com|",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: Color(0xFF878787)),
            ),
            const Gap(32),
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Didn’t receive code?",
                        style: TextStyles.bodyMediumMedium
                            .copyWith(color: Pallete.neutral60)),
                    const TextSpan(
                        text: ' ', style: TextStyles.bodyMediumSemiBold),
                    TextSpan(
                        text: "Resend",
                        style: TextStyles.bodyMediumSemiBold
                            .copyWith(color: Pallete.orangePrimary)),
                  ],
                ),
              ),
            ),
            const Gap(44),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time_rounded,
                  color: Pallete.neutral60,
                  size: getSize(20),
                ),
                const Gap(8),
                Text(
                  "09.00",
                  style: TextStyles.bodyMediumMedium
                      .copyWith(color: Pallete.neutral60),
                )
              ],
            ),
            const Gap(32),
            const DefaultButton(
              btnContent: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
