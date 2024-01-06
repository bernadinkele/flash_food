import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _current = 0;
  final backgrounds = [
    AssetsConstants.firstSplashImage,
    AssetsConstants.secondSplashImage,
    AssetsConstants.thirdSplashImage
  ];
  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(backgrounds[_current]), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(32))
                  .copyWith(bottom: getHeight(40)),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(getSize(30)),
                height: getHeight(400),
                decoration: ShapeDecoration(
                  color: Pallete.orangePrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getSize(48)),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "We serve incomparable delicacies",
                        style: TextStyles.headingH4SemiBold
                            .copyWith(color: Pallete.neutral10),
                      ),
                      const Gap(16),
                      Text(
                        "All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!",
                        style: TextStyles.bodyMediumRegular
                            .copyWith(color: Colors.white, fontSize: getFontSize(FontSizes.medium)),
                      ),
                      const Gap(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: EdgeInsets.only(left: getWidth(4)),
                            child: Container(
                              width: getWidth(24),
                              height: getHeight(6),
                              decoration: ShapeDecoration(
                                color: index == _current
                                    ? const Color(0xFFC2C2C2)
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      _current == 2
                          ? Column(
                              children: [
                                const Gap(24),
                                Container(
                                  height: getHeight(94),
                                  width: getHeight(94),
                                  padding: EdgeInsets.all(getSize(16)),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              AssetsConstants.eclipse))),
                                  child: InkWell(
                                    onTap: () =>
                                        Navigator.pushNamedAndRemoveUntil(
                                            context,
                                            RoutesName.login,
                                            (route) => false),
                                    child: Container(
                                      height: getSize(64),
                                      width: getSize(64),
                                      decoration: const BoxDecoration(
                                          color: Pallete.neutral10,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Pallete.orangePrimary,
                                        size: getSize(24),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      _current != 2 ? const Spacer() : const SizedBox(),
                      _current != 2
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: null,
                                  child: Text("Skip",
                                      style: TextStyles.bodyMediumSemiBold
                                          .copyWith(
                                        color: Pallete.neutral10,
                                          fontSize: getFontSize(FontSizes.medium)
                                      )),
                                ),
                                InkWell(
                                  onTap: () => setState(() {
                                    _current < 3 ? _current++ : null;
                                  }),
                                  child: Row(
                                    children: [
                                      Text("Next",
                                          style: TextStyles.bodyMediumSemiBold
                                              .copyWith(
                                            color: Pallete.neutral10,
                                              fontSize: getFontSize(FontSizes.medium)
                                          )),
                                      const Gap(8),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Pallete.neutral10,
                                        size: getSize(20),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ),
            ),
            const Gap(28),
            Container(
              height: getHeight((5)),
              width: getWidth(134),
              decoration: BoxDecoration(
                  color: Pallete.neutral10,
                  borderRadius: BorderRadius.circular(100)),
            ),
            const Gap(8)
          ],
        ),
      ),
    );
  }
}
