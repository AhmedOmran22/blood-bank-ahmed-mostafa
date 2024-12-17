import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/square_image_logo.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });
  final String text1;
  final String text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1.2,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(' or continue with '),
              Expanded(
                child: Divider(
                  thickness: 1.2,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.facebook_outlined,
                color: Color.fromARGB(255, 12, 78, 132),
                size: 60,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.google,
                color: Colors.black,
                size: 60,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.apple,
                color: Colors.black,
                size: 60,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                text2,
                style: const TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
