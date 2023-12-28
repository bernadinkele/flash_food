import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(buildContext: context, screenTitle: "Settings"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
          child: Column(
            children: [
              const Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PROFILE",
                    style: TextStyles.bodySmallMedium
                        .copyWith(color: const Color(0xFF878787)),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Push Notification",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100),
                        ),
                        const CupertinoSwitch(
                            activeColor: Pallete.orangePrimary,
                            trackColor: Color(0xFFDFE0F3),
                            value: false,
                            onChanged: null)
                      ],
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100),
                        ),
                        const CupertinoSwitch(
                            activeColor: Pallete.orangePrimary,
                            trackColor: Color(0xFFDFE0F3),
                            value: true,
                            onChanged: null)
                      ],
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(

                      children: [
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Language",
                              style: TextStyles.bodyMediumMedium
                                  .copyWith(color: Pallete.neutral100),
                            ),
                            Text(
                              "English",
                              style: TextStyles.bodyMediumMedium
                                  .copyWith(color: Pallete.neutral100),
                            ),
                          ],
                        )),
                        const Gap(16),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Pallete.neutral100,
                          size: getSize(24),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OTHER",
                    style: TextStyles.bodySmallMedium
                        .copyWith(color: const Color(0xFF878787)),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About Ticketis ",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Pallete.neutral100,
                          size: getSize(24),
                        )
                      ],
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy Policy ",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Pallete.neutral100,
                          size: getSize(24),
                        )
                      ],
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: getHeight(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms and Conditions",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Pallete.neutral100,
                          size: getSize(24),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
