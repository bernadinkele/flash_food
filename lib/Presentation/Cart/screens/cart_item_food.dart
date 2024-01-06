import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardItemFood extends StatelessWidget {
  const CardItemFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getHeight(16)),
      child: Container(
        width: double.infinity,
        height: getHeight(108),
        padding: EdgeInsets.all(getSize(12)),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getSize(12)),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 60,
              offset: Offset(6, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getSize(4))),
              value: true,
              onChanged: null,
              fillColor: const MaterialStatePropertyAll(Pallete.orangePrimary),
            ),
            const Gap(16),
            Container(
              width: getWidth(85),
              height: getHeight(82),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getSize(8)),
                image: const DecorationImage(
                  image:
                  AssetImage(AssetsConstants.ordinaryBurger),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Burger With Meat',
                      textAlign: TextAlign.center,
                      style:TextStyles.bodyLargeSemiBold.copyWith(
                          color: Pallete.neutral100,
                          fontSize: getFontSize(FontSizes.large)
                      )
                  ),
                  const Gap(4),
                  Text(
                      '\$ 12,230',
                      textAlign: TextAlign.center,
                      style: TextStyles.bodyMediumBold.copyWith(
                          color: Pallete.orangePrimary,
                          fontSize: getFontSize(FontSizes.medium)
                      )
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: getSize(28),
                            width: getSize(28),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: const Color(0xFFEAEAEA), width: 1)),
                            child: Icon(
                              Icons.remove,
                              size: getSize(24),
                              weight: 2,
                              color: const Color(0xFF878787),
                            ),
                          ),
                          const Gap(8),
                          Text('2',
                              style: TextStyles.bodyLargeBold
                                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large))),
                          const Gap(16),
                          Container(
                            height: getSize(28),
                            width: getSize(28),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                Border.all(color: const Color(0xFFEAEAEA), width: 1)),
                            child: Icon(
                              Icons.add,
                              size: getSize(24),
                              weight: 2,
                              color: Pallete.neutral100,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.delete, color: Pallete.pureError,size: getSize(20),)
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
