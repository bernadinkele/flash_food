import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
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
                        .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.small)),
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
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          barrierColor:
                              const Color(0xff2d3c5257).withOpacity(0.32),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          builder: (context) {
                            return Container(
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
                                children: [
                                  Gap(10),
                                  Container(
                                    width: 66.67,
                                    height: 4,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFD6D6D6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                    ),
                                  ),
                                  Gap(10),

                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Language",
                                style: TextStyles.bodyMediumMedium
                                    .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
                              ),
                              Text(
                                "English",
                                style: TextStyles.bodyMediumMedium
                                    .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
                        .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.small)),
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
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
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
