import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flash_food/Presentation/Base/food_item.dart';
import 'package:flash_food/Presentation/Cart/screens/cart_item_food.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "My Cart", isBackup: false
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: List.generate(3, (index) => const CardItemFood()),
              ),
              const Gap(26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recomended For You",
                    style: TextStyles.bodyLargeSemiBold
                        .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
                  ),
                  Text(
                    "See All",
                    style: TextStyles.bodyMediumMedium
                        .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.medium)),
                  )
                ],
              ),
              const Gap(16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodItem(),
                  FoodItem(),
                ],
              ),
              const Gap(16),
              Container(
                height: getHeight(2),
                width: double.infinity,
                color: Pallete.neutral30,
              ),
              const Gap(16),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(getSize(12)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getSize(16)),
                  border: Border.all(width: 1, color: const Color(0xFFEDEDED))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Summary",
                      style: TextStyles.bodyLargeSemiBold
                          .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Items (4)",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.medium)),
                        ),
                        Text(
                          "\$48,900",
                          style: TextStyles.bodyMediumBold
                              .copyWith(color: Pallete.neutral100),
                        ),
                      ],
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.medium)),
                        ),
                        Text(
                          "Free",
                          style: TextStyles.bodyMediumBold
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
                        ),
                      ],
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.medium)),
                        ),
                        Text(
                          "-\$10,900",
                          style: TextStyles.bodyMediumBold
                              .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.medium)),
                        ),
                      ],
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.medium)),
                        ),
                        Text(
                          "\$38,000",
                          style: TextStyles.bodyMediumBold
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
              const Gap(26),
              DefaultButton(btnContent: "Order Now"),
              const Gap(6)
            ],
          ),
        ),
      ),
    );
  }
}
