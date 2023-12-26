import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class DefaultButton extends StatelessWidget {
  DefaultButton({Key? key, required this.btnContent, this.function, this.btnIcon}) : super(key: key);
final String btnContent;
final IconData? btnIcon;
VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(52),
      width: double.infinity,
      child: FilledButton(
          style: const ButtonStyle(
              backgroundColor:
              MaterialStatePropertyAll(Pallete.orangePrimary)),
          onPressed: function,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnIcon!=null?
                  Row(
                    children: [
                      Icon(btnIcon, color: Colors.white, size: getSize(20),),
                      const Gap(8)
                    ],
                  ):const SizedBox(),
              Text(
                btnContent,
                style: TextStyles.bodyMediumSemiBold
                    .copyWith(color: Pallete.neutral10),
              ),
            ],
          )),
    );
  }
}
