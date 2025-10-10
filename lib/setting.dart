import 'package:figma/prompts_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

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
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        elevation: 0,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 24.sp,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PromptsLibrary()),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),

      body: Center(
        child: Container(
          height: 0.75.sh,
          width: 0.9.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: Colors.white.withOpacity(0.3),
          ),
          padding: EdgeInsets.only(left: 20.w, top: 10.h, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Section 1: Accounts
              Text("Accounts",
                  style: TextStyle(color: Colors.white, fontSize: 22.sp)),
              SizedBox(height: 6.h),

              Container(
                height: 0.25.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 52, 102, 70),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Icon 1
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image.asset("assets/setting_icon/subscription.png",height: 28.sp,width: 28.sp,),
                            SizedBox(height: 6.h),
                            Text("Subscription",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ],
                        ),
                        // Icon 2
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/setting_icon/changeEmail.png",height: 28.sp,width: 28.sp,),
                            SizedBox(height: 6.h),
                            Text("Change Email",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Icon 3
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/setting_icon/feedback.png",height: 28.sp,width: 28.sp,),
                            SizedBox(height: 6.h),
                            Text("Feedback",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ],
                        ),
                        // Icon 4
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete_outline_outlined,
                                color: Colors.white, size: 28.sp),
                            SizedBox(height: 6.h),
                            Text("Delete Account",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              //  Section 2: Preference
              Text("Preference",
                  style: TextStyle(color: Colors.white, fontSize: 22.sp)),
              SizedBox(height: 6.h),

              Container(
                height: 0.15.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 52, 102, 70),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Icon 5
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Image.asset("assets/setting_icon/language.png",height: 28.sp,width: 28.sp,),
                        SizedBox(height: 6.h),
                        Text("Language",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp)),
                      ],
                    ),
                    // Icon 6
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications_off_outlined,
                            color: Colors.white, size: 28.sp),
                        SizedBox(height: 6.h),
                        Text("Notification",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp)),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              // 🔹 Section 3: About
              Text("About",
                  style: TextStyle(color: Colors.white, fontSize: 22.sp)),
              SizedBox(height: 6.h),

              Container(
                height: 0.14.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 52, 102, 70),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Icon 7
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Image.asset("assets/setting_icon/termCondition.png",height: 28.sp,width: 28.sp,),
                        SizedBox(height: 6.h),
                        Text("Terms & Conditions",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp)),
                      ],
                    ),
                    // Icon 8
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/setting_icon/theme.png",height: 28.sp,width: 28.sp,),
                        SizedBox(height: 6.h),
                        Text("Theme Change",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
