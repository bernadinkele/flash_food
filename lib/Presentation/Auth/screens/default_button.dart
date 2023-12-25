import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.btnContent}) : super(key: key);
final String btnContent;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(52),
      width: double.infinity,
      child: FilledButton(
          style: const ButtonStyle(
              backgroundColor:
              MaterialStatePropertyAll(Pallete.orangePrimary)),
          onPressed: null,
          child: Text(
            btnContent,
            style: TextStyles.bodyMediumSemiBold
                .copyWith(color: Pallete.neutral10),
          )),
    );
  }
}
