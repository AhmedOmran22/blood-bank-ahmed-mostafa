import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/core/widgets/custom_container.dart';
import 'package:graduation_project/core/widgets/custom_drawer.dart';

import 'custom_floating_action_button.dart';

class BloodBanks extends StatelessWidget {
  const BloodBanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_sharp),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            child: Image.asset(AppAssets.imagesthinkher),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                imagePath: AppAssets.banks,
                text: 'Blood Bank\n Smouha',
                ontab: () {
                  Navigator.pushNamed(context, RoutesName.allneeds);
                },
              ),
              const SizedBox(
                width: 30,
              ),
              CustomContainer(
                imagePath: AppAssets.banks,
                text: 'Blood Bank\n Alexandria',
                ontab: () {
                  Navigator.pushNamed(context, RoutesName.allneeds);
                },
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                imagePath: AppAssets.banks,
                text: 'Blood Bank\n Manshiya',
                ontab: () {
                  Navigator.pushNamed(context, RoutesName.allneeds);
                },
              ),
              const SizedBox(
                width: 30,
              ),
              CustomContainer(
                imagePath: AppAssets.banks,
                text: 'Blood Bank\n Mandara',
                ontab: () {
                  Navigator.pushNamed(context, RoutesName.allneeds);
                },
              )
            ],
          )
        ],
      ),
      floatingActionButton: const CustomFloatingActionBouttun(),
    );
  }
}
