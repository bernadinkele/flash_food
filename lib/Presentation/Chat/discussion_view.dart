import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/font_size.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Auth/screens/default_field.dart';
import 'package:flash_food/Presentation/Chat/screens/receiver_message_tile.dart';
import 'package:flash_food/Presentation/Chat/screens/sender_message_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flash_food/Core/assets_constantes.dart';

class DiscussionView extends StatelessWidget {
  const DiscussionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
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
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: getHeight(60),
                  padding: EdgeInsets.symmetric(vertical: getHeight(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getHeight(36),
                        width: getHeight(36),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Pallete.neutral30, width: 1),
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: EdgeInsets.only(left: getWidth(8)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Pallete.neutral100,
                            size: getSize(20),
                          ),
                        ),
                      ),
                      Text(
                        "Chat List",
                        style: TextStyles.bodyLargeSemiBold
                            .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesName.call),
                        child: Container(
                          height: getHeight(36),
                          width: getHeight(36),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Pallete.neutral30, width: 1),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: EdgeInsets.only(left: getWidth(8)),
                            child: Icon(
                              Icons.phone_outlined,
                              color: Pallete.neutral100,
                              size: getSize(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                ReceiverMessageTile(),
                const Gap(16),
                SenderMessageTile(),
                const Gap(16),
                ReceiverMessageTile(
                  message: "Okay, Wait a minute 🙏",
                ),
                const Gap(16),
                SenderMessageTile()
              ],
            ),
          ),

        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
            bottom: getHeight(32)
        ),
        height: getHeight(100),
        width: double.infinity,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: DefaultField(
              controller: searchController,
              hintText: "Type something...",
              prefixIcon: Icons.emoji_emotions_outlined,
              suffixIcon: Icons.insert_link,
            ),),
            const Gap(8),
            Container(
              width: getSize(52),
              height:  getSize(52),
              padding: EdgeInsets.all(getSize(16)),
              decoration: ShapeDecoration(
                color: Pallete.orangePrimary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getSize(8))),
              ),
              child: Icon(Icons.send,size: getSize(20),color: Pallete.whiteError,)
            )
          ],
        ),
      ),
    );
  }
}
