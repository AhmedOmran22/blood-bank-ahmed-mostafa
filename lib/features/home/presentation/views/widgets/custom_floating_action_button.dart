import 'package:flutter/material.dart';

import '../../../../../core/routes/routes_name.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomFloatingActionBouttun extends StatelessWidget {
  const CustomFloatingActionBouttun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.secondColor,
      child: Image.asset("assets/images/bot.png"),
      onPressed: () {
        Navigator.pushNamed(context, RoutesName.chatBot);
      },
    );
  }
}
