import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
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
                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(32)),
            ),
            Text(
              "Your new password must be different from the previously used password",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(14)),
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
                  .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(14)),
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
                  .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(14)),
            ),
            const Spacer(),
            DefaultButton(
              btnContent: "Verify Account",
              function: () => showModalBottomSheet(
                barrierColor: const Color(0xff2d3c5257).withOpacity(0.32),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),

                context: context,
                builder: (context) {
                  return Container(
                    height: getHeight(492),
                    padding:
                        const EdgeInsets.only(left: 24, right: 24),
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 327,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.10,
                                  child: Container(
                                    width: 327,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color(0x00C4C4C4)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 134.43,
                                top: 10,
                                child: Container(
                                  width: 58.13,
                                  height: 4,
                                  decoration: ShapeDecoration(
                                    color: Colors.black
                                        .withOpacity(0.20000000298023224),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(32),
                        Container(
                            height: getHeight(168),
                            width: getWidth(202),
                            padding: const EdgeInsets.only(top: 24),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AssetsConstants.vector),
                                    fit: BoxFit.fill)),
                            child: Center(
                              child: Container(
                                height: getHeight(124),
                                width: getHeight(124),
                                padding: EdgeInsets.all(getSize(24)),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(AssetsConstants.ellipse),
                                )),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(AssetsConstants.polygon),
                                  )),
                                  child: const Icon(
                                    Icons.check,
                                    color: Pallete.orangePrimary,
                                    size: 32,
                                  ),
                                ),
                              ),
                            )),
                        const Gap(32),
                        Text("Password Changed", style: TextStyles.headingH5SemiBold.copyWith(
                          color: Pallete.neutral100,
                            fontSize: getFontSize(24)
                        ),),
                        const Gap(32),
                        Text("Password changed successfully, you can login again with a new password", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Color(0xFF878787), fontSize: getFontSize(14)
                        ),),
                        
                        const Gap(32),
                        DefaultButton(btnContent: "Verify Account")
                      ],
                    ),
                  );
                },
              ),
            ),
            const Gap(32)
          ],
        ),
      ),
    );
  }
}
