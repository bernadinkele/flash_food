import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: EdgeInsets.only(left: getWidth(12)),
      width: getWidth(72),
      height: getHeight(74),
      textStyle:
          TextStyles.headingH4Regular.copyWith(color: Pallete.neutral100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getSize(12)),
        border: Border.all(color: const Color(0xFFEAEAEA), width: 1),
      ),
    );
    MathUtils.init(context);

    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "OTP"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            Text(
              "Email verification",
              style: TextStyles.headingH4SemiBold
                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(32)),
            ),
            Text(
              "Enter the verification code we send you on : Alberts******@gmail.com|",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: const Color(0xFF878787),fontSize: getFontSize(14)),
            ),
            const Gap(32),
            Pinput(
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
            ),
            const Gap(16),
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Didn’t receive code?",
                        style: TextStyles.bodyMediumMedium
                            .copyWith(color: Pallete.neutral60, fontSize: getFontSize(14))),
                     TextSpan(
                        text: ' ', style: TextStyles.bodyMediumSemiBold.copyWith(
                         fontSize: getFontSize(14)
                     )),
                    TextSpan(
                        text: "Resend",
                        style: TextStyles.bodyMediumSemiBold
                            .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(14))),
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
                      .copyWith(color: Pallete.neutral60, fontSize: getFontSize(14)),
                )
              ],
            ),
            const Gap(32),
            DefaultButton(
              btnContent: "Continue",
              function: () => Navigator.pushNamed(context, RoutesName.resetPassword),
            ),
          ],
        ),
      ),
    );
  }
}
