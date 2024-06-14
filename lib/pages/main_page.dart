import 'package:firstapp/config/app_icons.dart';
import 'package:firstapp/config/app_strings.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Bottom Nav Container'),
        // ),
        body: pages[currentIndex.index],
        bottomNavigationBar: MyBottomNav(
          currentIndex: currentIndex.index,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        )

        /*
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(AppIcons.icHome2), label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(AppIcons.icFavorite), label: 'Favorites'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(AppIcons.icAdd), label: 'Add Post'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(AppIcons.icMessage), label: 'Messages'),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(AppIcons.icUser), label: 'User'),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.amber,
      // ),
      */
        );
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text(AppStrings.favorites),
    ),
    const Center(
      child: Text(AppStrings.add),
    ),
    const Center(
      child: Text(AppStrings.messages),
    ),
    const ProfilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  messages,
  user,
}

class MyBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<Menus> onTap;

  const MyBottomNav(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.home),
                          icon: SvgPicture.asset(AppIcons.icHome))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.favorite),
                          icon: SvgPicture.asset(AppIcons.icFavorite))),
                  const Spacer(),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.messages),
                          icon: SvgPicture.asset(AppIcons.icMessage))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.user),
                          icon: SvgPicture.asset(AppIcons.icUser))),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                height: 64,
                width: 64,
                //padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// class MyBottomNav extends StatefulWidget {
//   const MyBottomNav({super.key});

//   @override
//   State<MyBottomNav> createState() => _MyBottomNavState();
// }

// class _MyBottomNavState extends State<MyBottomNav> {
  
// }
