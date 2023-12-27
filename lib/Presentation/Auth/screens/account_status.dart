import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({Key? key, required this.action, required this.question})
      : super(key: key);
  final String question;
  final String action;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: question,
                style: TextStyles.bodyMediumMedium
                    .copyWith(color: Pallete.neutral100)),
            TextSpan(text: ' ', style: TextStyles.bodyMediumSemiBold),
            TextSpan(
                text: action,
                style: TextStyles.bodyMediumSemiBold
                    .copyWith(color: Pallete.orangePrimary)),
          ],
        ),
      ),
    );
  }
}
