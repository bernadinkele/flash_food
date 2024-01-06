import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Stevano Clirover',
              style: TextStyles.headingH5SemiBold.copyWith(
                color: Pallete.whiteError,
                  fontSize: getFontSize(FontSizes.h5)
              )
            ),
            const Gap(8),
            Container(
              width: 88,
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(


                children: [
                  Container(
                    padding: const EdgeInsets.all(2.50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                          height: 15,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1.25,
                                top: 1.25,
                                child: Container(
                                  width: 12.50,
                                  height: 12.50,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFF14141),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                        width: 0.83,
                                        strokeAlign: BorderSide.strokeAlignOutside,
                                        color: Color(0xFFF14141),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(4),
                   Text(
                    '03:45',
                    style: TextStyle(
                      color: const Color(0xFF0F0F0F),
                      fontSize: getFontSize(FontSizes.medium),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: getSize(56),
                  height: getSize(56),
                  padding:EdgeInsets.all(getSize(16)),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    shape:BoxShape.circle
                  ),
                  child: Icon(Icons.close, color: Pallete.whiteError, size: getSize(24),)
                ),
                const Gap(24),
                Container(
                  width: getSize(60),
                  height: getSize(60),
                  padding: EdgeInsets.all(getSize(16)),
                  decoration:const BoxDecoration(
                    color:Pallete.pureError,
                      shape:BoxShape.circle
                  ),
                    child: Icon(Icons.close, color: Pallete.whiteError, size: getSize(28),)
                ),
                const Gap(24),
                Container(
                    width: getSize(56),
                    height: getSize(56),
                    padding:EdgeInsets.all(getSize(16)),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        shape:BoxShape.circle
                    ),
                    child: Icon(Icons.mic, color: Pallete.whiteError, size: getSize(24),)
                ),
              ],
            ),
            const Gap(32)
          ],
        ),
      ),
    );
  }
}
