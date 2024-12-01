import 'package:fitness_app/widgets/dashboard_card.dart';
import 'package:fitness_app/widgets/dashboard_name_shower.dart';
import 'package:fitness_app/widgets/dashboard_title_shower.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/data/main_feature_models.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 207, 60),
                    Color.fromARGB(0, 194, 179, 12),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(47),
                  topRight: Radius.circular(47),
                  bottomRight: Radius.circular(47),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const DashboardTitleShower(),
                  DashboardNameShower(
                    userName: userName,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...mainFeatureModels.map(
              (model) {
                return InkWell(
                  onTap: () {
                    print(model.dashBoardCardName);
                  },
                  child: DashboardCard(
                    name: model.dashBoardCardName,
                    imageUrl: model.backgroundImagePath,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
