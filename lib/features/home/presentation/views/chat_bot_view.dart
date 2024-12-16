import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';

import 'widgets/chat_bot_view_body.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Chat Bot'),
      body: ChatBotViewBody(),
    );
  }
}
