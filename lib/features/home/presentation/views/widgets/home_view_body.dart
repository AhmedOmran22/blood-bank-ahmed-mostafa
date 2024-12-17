import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_assets.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.imagesBro,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            'choose which one do you prefer',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
          const SizedBox(height: 50),
          const Center(
            child: HomeViewContainer(),
          ),
        ],
      ),
    );
  }
}
