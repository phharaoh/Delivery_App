import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile PNG.png'),
              radius: 68,
            ),
            SizedBox(height: 16),
            const Text(
              'Ahmed Hegazy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'ahmedhegazy.dev.eg@gmail.com',
              style: TextStyle(color: AppColors.secondColor),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                color:AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: const Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 30,
                  vertical: 8,
                ),
                child: Text('Log Out', textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
