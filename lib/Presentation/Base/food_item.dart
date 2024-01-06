import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RoutesName.aboutMenu),
      child: Container(
        height: getHeight(204),
        width: getWidth(153),
        padding: EdgeInsets.all(getSize(12)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getSize(12)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 60,
              offset: Offset(6, 6),
              spreadRadius: 0,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: getWidth(137),
              height: getHeight(106),
              padding: EdgeInsets.all(getSize(8)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getSize(8)),
                  image: const DecorationImage(
                      image: AssetImage(AssetsConstants.ordinaryBurger),
                      fit: BoxFit.fill)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width: getHeight(30),
                      height: getHeight(30),
                      padding: EdgeInsets.all(getSize(5)),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Pallete.pureError,
                        size: getSize(20),
                      )),
                ],
              ),
            ),
            const Gap(8),
            Text(
              "Ordinary Burgers",
              style: TextStyles.bodyLargeMedium
                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
            ),
            const Gap(4),
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Pallete.orangePrimary,
                      size: getSize(16),
                    ),
                    const Gap(4),
                    Text(
                      "4.9",
                      style: TextStyles.bodySmallMedium
                          .copyWith(color: Pallete.neutral100),
                    )
                  ],
                ),
                const Gap(40),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Pallete.orangePrimary,
                      size: getSize(16),
                    ),
                    const Gap(4),
                    Text(
                      "190m",
                      style: TextStyles.bodySmallMedium
                          .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.small)),
                    )
                  ],
                )
              ],
            ),
            const Gap(6),
            Text(
              '\$ 17,230',
              style: TextStyles.bodyLargeBold
                  .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.large)),
            )
          ],
        ),
      ),
    );
  }
}
