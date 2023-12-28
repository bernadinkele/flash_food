import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Auth/screens/default_field.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class PersonalDataView extends StatelessWidget {
  const PersonalDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final fullNameController = TextEditingController();
    final bithdayController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle:"Personal Date"),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(24),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage(AssetsConstants.user),
                  radius: getSize(50),
                ),
                Positioned(
                  left: getSize(72),
                  bottom:getSize(8),
                  child: Container(
                    width: getSize(32),
                    height: getSize(32),
                    padding:  EdgeInsets.all(getSize(6)),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF5F5FF),
                        shape:BoxShape.circle
                    ),
                    child: Icon(CupertinoIcons.camera_fill, color: Pallete.orangePrimary , size: getSize(20),),
                  ),
                )
              ],
            ),
            const Gap(24),
          Form(
            key: formKey,
              child: Column(
            children: [
              DefaultField(
                  controller: fullNameController,
                  hintText: "Enter Your Full Name",
                labelText: "Full Name",
              ),
              const Gap(12),
              DefaultField(
                controller: bithdayController,
                hintText: "Enter Your Date of birth",
                labelText: "Date of birth",
              ),
              const Gap(12),
              DefaultField(
                controller: phoneController,
                hintText: "Enter Your Phone Number",
                labelText: "Phone",
              ),
              const Gap(12),
              DefaultField(
                controller: fullNameController,
                hintText: "Enter Your Email",
                labelText: "Email",
              ), const Gap(12),
              DefaultField(
                controller: emailController,
                hintText: "Enter Your Email",
                labelText: "Email",
              ),


            ],
          )),const Gap(36),
            DefaultButton(btnContent: "Save")
          ],
        ),
      ),
    );
  }
}
