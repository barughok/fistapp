import 'package:firstapp/components/toolbar.dart';
import 'package:firstapp/components/user_avater.dart';
import 'package:firstapp/config/app_routes.dart';
import 'package:firstapp/config/app_strings.dart';
import 'package:firstapp/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print('Log Out');
                break;
              default:
            }
          },
              //icon: const Icon(Icons.more_horiz_rounded),
              itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: ProfileMenu.edit,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.edit),
                    Text(AppStrings.edit),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: ProfileMenu.logout,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.logout),
                    Text(AppStrings.logout),
                  ],
                ),
              ),
            ];
          }),
          // IconButton(
          //     onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
      body: const Column(
        children: [
          UserAvater(
            size: 90,
          ),

          SizedBox(
            height: 16,
          ),
          Text(
            'Hadassah',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Nigeria',
            style: AppText.subtitle3,
          ),
          // const Divider(
          //   thickness: 2,
          // ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('472', style: AppText.header2),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text('119', style: AppText.header2),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text('860', style: AppText.header2),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          Divider(
            height: 24,
          ),
        ],
      ),
    );
  }
}
