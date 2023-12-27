import 'package:flash_food/Core/response_conf.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flash_food/Core/assets_constantes.dart';
class DiscussionView extends StatelessWidget {
  const DiscussionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: 294,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AssetsConstants.chatBackground,
                      ),
                      fit: BoxFit.fill,
                      opacity: 0.2)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24))
                  .copyWith(top: MediaQuery.of(context).viewPadding.top),

            )
          ],
        ),
    );
  }
}
