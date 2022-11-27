import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //logo
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 30),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                  image: AssetImage('icons/icon.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/home'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/home'
                                ? Icons.desktop_windows
                                : Icons.desktop_windows_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/task'
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              )
                            : const BoxDecoration(),
                        child: Icon(
                          Get.currentRoute == '/task'
                              ? Iconsax.d_cube_scan
                              : Iconsax.d_cube_scan,
                          color: AppColors.primaryText,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Task',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ]),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/friends'
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              )
                            : const BoxDecoration(),
                        child: Icon(
                          Get.currentRoute == '/friends'
                              ? Iconsax.heart
                              : Iconsax.heart,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Friends',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 16),
                      ),
                    ]),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/profile'
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              )
                            : const BoxDecoration(),
                        child: Icon(
                          Get.currentRoute == '/profile'
                              ? Iconsax.profile_circle
                              : Iconsax.profile_circle,
                          color: AppColors.primaryText,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 16),
                      ),
                    ]),
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
