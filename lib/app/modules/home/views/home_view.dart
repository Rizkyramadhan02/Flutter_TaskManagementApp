import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Drawer(
                elevation: 5,
                child: Container(
                  height: Get.height,
                  color: Colors.blue[100],
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
                          child: Image(
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
                                    decoration: Get.currentRoute == '/Home'
                                        ? BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                          )
                                        : const BoxDecoration(),
                                    child: Icon(
                                      Get.currentRoute == '/Home'
                                          ? Ionicons.desktop
                                          : Ionicons.desktop_outline,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
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
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: Colors.white,
                                        )
                                      : const BoxDecoration(),
                                  child: Icon(
                                    Get.currentRoute == '/task'
                                        ? Ionicons.cube
                                        : Ionicons.cube_outline,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Task',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
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
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: Colors.white,
                                        )
                                      : const BoxDecoration(),
                                  child: Icon(
                                    Get.currentRoute == '/friends'
                                        ? Ionicons.heart
                                        : Ionicons.heart_outline,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Friends',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
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
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: Colors.white,
                                        )
                                      : const BoxDecoration(),
                                  child: Icon(
                                    Get.currentRoute == '/profile'
                                        ? Ionicons.person
                                        : Ionicons.person_outline,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Profile',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
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
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
