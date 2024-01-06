import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../screens/default_field.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flash_food/Core/Utils/utils.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

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
            "Login to your\n account.",
            style: TextStyles.headingH4SemiBold
                .copyWith(color: Pallete.neutral100),
          ),
          const Gap(8),
          Text(
            "Please sign in to your account ",
            style:
                TextStyles.bodyMediumMedium.copyWith(color: Pallete.neutral60, fontSize: getFontSize(14)),
          ),
          const Gap(32),
          DefaultField(
            hintText: "Enter Email",
            controller: emailController,
            labelText: "Email Address",
          ),
          const Gap(14),
          DefaultField(
            hintText: "Password",
            controller: passwordController,
            labelText: "Password",
            isPasswordField: true,
          ),
          const Gap(24),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.forgetPassword),
              child: Text(
                "Forgot password?",
                style: TextStyles.bodyMediumMedium
                    .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(14)),
              ),
            ),
          ),
          const Gap(24),
          DefaultButton(
            btnContent: "Sign",
            function: () => Navigator.pushReplacementNamed(context, RoutesName.main),
          ),
          const Gap(24),
          Row(
            children: [
              const Expanded(child: Divider(color: Pallete.neutral60,height: 0.5,)),
              const Gap(16),
              Text("Or sign in with", style: TextStyles.bodyMediumMedium.copyWith(color: Pallete.neutral60, fontSize: getFontSize(14)),),
              const Gap(16),
              const Expanded(child: Divider(color: Pallete.neutral60,height: 0.5,)),
            ],
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialIcons.map((e) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                    Border.all(color: Pallete.neutral40, width: 1)),
                child: SvgPicture.asset(
                  e
                ),
              ),
            )).toList()
          ),
          const Gap(32),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyles.bodyMediumMedium
                          .copyWith(color: Pallete.neutral100, fontSize: getFontSize(14)), ),
                   TextSpan(
                      text: ' ', style: TextStyles.bodyMediumSemiBold.copyWith(
                       fontSize: getFontSize(14)
                   )),
                  TextSpan(
                      recognizer: TapGestureRecognizer()..onTap
                      =()=>Navigator.pushReplacementNamed(context, RoutesName.signUp),
                      text: 'Register',
                      style: TextStyles.bodyMediumSemiBold
                          .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(14))),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
