import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes_name.dart';
import 'package:graduation_project/core/widgets/custom_allneeds_container.dart';
import 'package:graduation_project/core/widgets/custom_drawer.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/custom_floating_action_button.dart';

class AllneedsView extends StatelessWidget {
  const AllneedsView({super.key});

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAllneedsContainer(
            text: 'Needed Blood ',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.needsblood);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomAllneedsContainer(
            text: ' Needed Blood platelets',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.neededbloodplatelets);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomAllneedsContainer(
            text: ' Needed Blood plasma',
            ontab: () {
              Navigator.pushNamed(context, RoutesName.neededbloodplasma);
            },
          ),
        ],
      ),
      floatingActionButton: const CustomFloatingActionBouttun(),
    );
  }
}
