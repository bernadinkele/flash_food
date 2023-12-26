import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(300),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsConstants.chatBackground), fit: BoxFit.fill)
            ),
          )
        ],
      ),
    );
  }
}
