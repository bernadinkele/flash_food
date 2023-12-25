import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize buildAppBar({
  required BuildContext buildContext,
  required String screenTitle
}){
  return PreferredSize(
    preferredSize: const Size(double.infinity, 60),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(12)),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          screenTitle,
          style: TextStyles.bodyLargeSemiBold
              .copyWith(color: Pallete.neutral100),
        ),
        centerTitle: true,
        leading: Container(
          height: getHeight(36),
          width: getHeight(36),
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.neutral30, width: 1),
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
      ),
    ),
  );
}