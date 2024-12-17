import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_drop_tybe_blood.dart';

import 'custom_floating_action_button.dart';

class CustomNeededBlood extends StatelessWidget {
  const CustomNeededBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Needed Blood ',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 35, left: 30),
              child: Text(
                'Blood type',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 30),
              child: Image.asset(AppAssets.imagestybeblood),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35, left: 30),
              child: Text(
                'Blood unit Needed',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            CustomDropdown(
              items: const ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'],
              onChanged: (value) {},
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'Location',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),

            CustomDropdown(
              hintText: 'location',
              items: const [
                'Blood Bank  Smouhab',
                'Blood Bank  Alexandria',
                'Blood Bank Manshiya',
                'Blood Bank Mandara',
              ],
              onChanged: (value) {},
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'how much blood ?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),

            CustomDropdown(
              hintText: 'how much blood you need ?',
              items: const [
                '1 bag',
                '2 bag',
                '3 bag ',
                '4 bag',
              ],
              onChanged: (value) {},
            ),
            // CustomTextFiledCircle(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onPressed: () {}, text: 'Buy Now')
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingActionBouttun(),
    );
  }
}
