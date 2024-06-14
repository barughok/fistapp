import 'package:firstapp/components/post_iten.dart';
import 'package:firstapp/components/toolbar.dart';
import 'package:firstapp/config/app_icons.dart';
import 'package:firstapp/config/app_strings.dart';
// import 'package:firstapp/styles/app_colors.dart';
// import 'package:firstapp/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appname,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.icLocation,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
      // (
      //   children: mockUsersFromServer(),
      // )

      // SingleChildScrollView(
      //   child: Column(
      //     children: mockUsersFromServer(),
      //     //[

      //     // _userItem(),
      //     // Row(
      //     //   children: [
      //     //     Image.asset(
      //     //       'assets/temp/use1.jpg',
      //     //       width: 40,
      //     //       height: 40,
      //     //     ),
      //     //     const SizedBox(
      //     //       width: 16,
      //     //     ),
      //     //     const Text('Sarah Maazi'),
      //     //   ],
      //     // ),
      //     //],
      //   ),
      // ),
    );
  }

  //Widget _userItem() {
  // return Row(
  //   children: [
  //     Image.asset(
  //       'assets/temp/use1.jpg',
  //       width: 40,
  //       height: 40,
  //     ),
  //     const SizedBox(
  //       width: 16,
  //     ),
  //     const Text(
  //       'Sarah Maazi',
  //       style: AppText.subtitle3,
  //     ),
  //   ],
  // );
  //}

  mockUsersFromServer() {
    for (var i = 0; i <= 50; i++) {
      users.add('User number $i');
    }
  }
}
