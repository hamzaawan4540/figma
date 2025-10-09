// ignore: unnecessary_import
import 'dart:ui';
import 'package:figma/chatgpt.dart';
import 'package:figma/chellenges.dart';
import 'package:figma/prompts_library.dart';
import 'package:figma/recommended_for_u.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:figma/profile%20pages/profile_screen.dart';
import 'package:figma/setting.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: screenWidth * 0.06,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 52, 102, 70),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 22.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
              child: Image.asset(
                "assets/recommended/profile_iconss.png",
                height: 35.h,
                width: 35.w,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Profile Pic
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage("assets/Ellipse_1.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 4.w,
                  child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                      size: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.h),
          Text(
            "Figma98",
            style: TextStyle(color: Colors.white, fontSize: 22.sp),
          ),
          Text(
            "Figma98@gmail.com",
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          SizedBox(height: 30.h),

          // Container 1
          Padding(
            padding: EdgeInsets.all(13.w),
            child: Container(
              height: 90.h,
              width: 0.9.sw,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 92, 161, 119),
                    Color.fromARGB(255, 52, 102, 70),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Quiz for more Ai Tools...!',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          "Take a 1-Minute Quiz",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                         alignment: Alignment.center, // optional: center align both
                         children: [
                           Image.asset(
                             "assets/setting_icon/home.png",
                            
                           ),
                           Image.asset(
                             "assets/setting_icon/Vectorrr.png",
                             height: 30.h,
                             width: 30.h,
                             
                           ),
                         ],
                       ),

                    Padding(
                      padding: const EdgeInsets.only(top: 35.0,),
                      child: Image.asset("assets/recommended/container_1.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Container 2
          Padding(
            padding: EdgeInsets.all(13.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PromptsLibrary()),
                );
              },
              child: Container(
                height: 75.h,
                width: 0.9.sw,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 85, 69),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 10.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  Overlapping images
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            "assets/Vector_1.png",
                            width: 28.w,
                            height: 28.h,
                          ),
                          Positioned(
                            left: 6.w,
                            top: 6.h,
                            child: Image.asset(
                              "assets/Vector.png",
                              width: 28.w,
                              height: 28.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 17.w),
                      //  Texts
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prompts Library',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "All Ai tools available here...!",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 77.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Container 3
          Padding(
            padding: EdgeInsets.all(13.w),
            child: Container(
              height: 75.h,
              width: 0.9.sw,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 69, 85, 69),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Image.asset(
                      "assets/cursive/chatgpt_icon.png",
                      color: Colors.white,
                      width: 65.w,
                      height: 65.h,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ChatGpt',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "61%",
                        style: TextStyle(fontSize: 14.sp, color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 183.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 92, 161, 119),
              Color.fromARGB(255, 52, 102, 70),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            iconSize: 22.sp,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/navigationBar/ai_tool.png',
                  width: 24, // size set karo
                  height: 24,
                ),
                label: "Ai Tools",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/navigationBar/chellenges.png',
                  width: 24, // size set karo
                  height: 24,
                ),
                label: "Challenges",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/navigationBar/guides.png', // 👈 apni image ka path
                  width: 24, // size set karo
                  height: 24,
                ),
                label: "Guides",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 30.sp,
                  color: Colors.white,
                ),
                label: "Profile",
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecommendedForU(),
                  ),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chellenges()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chatgpt()),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
