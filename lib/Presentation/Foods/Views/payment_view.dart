import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_button.dart';
import 'package:flash_food/Presentation/Base/base.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);
    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "Payment"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Text('You deserve better meal',
                style: TextStyles.bodyMediumRegular
                    .copyWith(color: Pallete.neutral60)),
            Gap(4),
            Text(
              'Item Ordered',
              style:  TextStyles.bodyLargeSemiBold
                  .copyWith(color: Pallete.neutral100)),
            Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   Container(
                     height: getHeight(70),
                     width: getWidth(80),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(getSize(8)),
                         image: DecorationImage(image: AssetImage(AssetsConstants.ordinaryBurger),fit: BoxFit.fill)
                     ),
                   ),
                   Gap(12),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Burger With Meat", style: TextStyles.bodyMediumSemiBold.copyWith(
                           color: Pallete.neutral100
                       ),),
                       Gap(8),
                       Text("\$ 12,230", style: TextStyles.bodyMediumBold.copyWith(
                           color: Pallete.orangePrimary
                       ),),
                     ],
                   )
                 ],
               ),
                Text("4 items", style: TextStyles.bodySmallMedium.copyWith(
                  color: Pallete.neutral60
                ),)
              ],
            ),
            Gap(24),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Details Transaction", style: TextStyles.bodyLargeSemiBold.copyWith(
                      color: Pallete.neutral100
                  ),),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cherry Healthy", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("\$ 180.000", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Driver", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("\$ 50.000", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax 10%", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("\$ 80.390", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Price", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("\$ 100.000", style: TextStyles.bodyMediumBold.copyWith(
                          color: Pallete.orangePrimary
                      ),),
                    ],
                  ),
                  Gap(20),
                ],
              ),
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Pallete.neutral30,
            ),
            Gap(20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Deliver To", style: TextStyles.bodyLargeSemiBold.copyWith(
                      color: Pallete.neutral100
                  ),),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("Albert Stevano", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phone No.", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("+12 8347 2838 28", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Address", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("New York", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("House No.", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("BC54 Berlin", style: TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),
                  Gap(14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("City", style: TextStyles.bodyMediumRegular.copyWith(
                          color: Pallete.neutral60

                      ),),
                      Text("New York City", style:TextStyles.bodyMediumMedium.copyWith(
                          color: Pallete.neutral100
                      ),),
                    ],
                  ),

                ],
              ),
            ),

            Spacer(),
            DefaultButton(btnContent: "Chackout Now"),

            Gap(32),
          ],
        ),
      ),
    );
  }
}
