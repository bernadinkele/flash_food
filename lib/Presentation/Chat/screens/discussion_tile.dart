import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiscussionTile extends StatelessWidget {
  const DiscussionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, RoutesName.discussion),
      child: Container(
        width: double.infinity,
        height: getHeight(72),
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(8), vertical: getHeight(16)),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getSize(8))),
          shadows: const [
            BoxShadow(
              color: Color(0x07000000),
              blurRadius: 60,
              offset: Offset(8, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage(AssetsConstants.user),
                    radius: getSize(20),
                  ),
                  const Gap(8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Geopart Etdsien",
                        style: TextStyles.bodyMediumSemiBold
                            .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
                      ),
                      const Gap(4),
                      Text(
                        "Your Order Just Arrived!",
                        style: TextStyles.bodySmallMedium
                            .copyWith(color: Pallete.neutral60, fontSize: getFontSize(FontSizes.small)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "13.47",
                  style: TextStyles.bodyMediumSemiBold
                      .copyWith(color: Pallete.neutral60, fontSize: getFontSize(FontSizes.medium)),
                ),
                const Gap(4),
                SizedBox(
                  width: getSize(20),
                  height: getSize(20),
                  child:  Icon(
                    Icons.check,
                    color: Pallete.orangePrimary,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
