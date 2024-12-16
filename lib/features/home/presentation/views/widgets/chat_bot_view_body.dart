import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';

import '../../../../../core/utils/app_colors.dart';

class ChatBotViewBody extends StatelessWidget {
  const ChatBotViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return null;
            },
          ),
        ),
        Row(
          children: [
            const Expanded(child: CustomTextField()),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send, color: AppColors.primaryColor),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
