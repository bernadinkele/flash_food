import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Notifications/Models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({Key? key, required this.notificationModel, required this.isEspecialNotification}) : super(key: key);
final NotificationModel notificationModel;
final bool isEspecialNotification;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.only(bottom: getHeight(16)),
      child:Column(
        children: [
          isEspecialNotification==true?
              const Column(
                children: [
                  Divider(
                    color: Pallete.neutral30,
                    height: 1,
                  ),
                  Gap(16),
                ],
              ):const SizedBox(),
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Pallete.greyPrimary
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notificationModel.notificationTitle, style: TextStyles.bodyLargeSemiBold.copyWith(
                        color: Pallete.neutral100,
                        fontSize: getFontSize(FontSizes.large)
                    ),),
                    const Gap(4),
                    Text(notificationModel.notificationContent,style: TextStyles.bodyMediumRegular.copyWith(
                        color: Pallete.neutral60,
                        fontSize: getFontSize(FontSizes.medium)
                    ),)
                  ],
                ),
              )
            ],
          ),

        ],
      )
    );
  }
}
