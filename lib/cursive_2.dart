import 'package:figma/chatgpt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cursive2 extends StatelessWidget {
  const Cursive2({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive sizes
    return ScreenUtilInit(
      designSize: const Size(390, 844), // iPhone 12 reference size
      builder: (context, child) {
        final screenWidth = MediaQuery.of(context).size.width;

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 75, 75, 75),
          appBar: AppBar(
             title: Image.asset(
              'assets/cursive/Coursiv.png',
              height: 40,
            ),
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
           
          ),

          //  No Scroll — everything fits and scales
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 10.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // 🔹 First Heading
                      Container(
                        height: 55.h,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 166, 166, 166),
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Text(
                            "28 Day's AI Challenges, 2025",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      // 🔹 Beginner Text
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Text(
                            "Beginner",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12.h),

                      // 🔹 First Box
                      Container(
                        height: 205.h,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 166, 166, 166),
                          ),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.r),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 190.w,
                                top: 45.h,
                                child: Image.asset(
                                  "assets/Group2338.png",
                                  fit: BoxFit.cover,
                                  width: 65.w,
                                  height: 65.h,
                                ),
                              ),
                              Positioned(
                                left: 108.w,
                                top: 85.h,
                                child: Image.asset(
                                  "assets/cursive/Group_2339.png",
                                  width: 70.w,
                                  height: 70.h,
                                ),
                              ),
                              Positioned(
                                left: 50.w,
                                top: 10.h,
                                child: Image.asset(
                                  "assets/cursive/Group_2341.png",
                                  width: 65.w,
                                  height: 65.h,
                                ),
                              ),
                              Positioned(
                                right: 15.w,
                                top: 15.h,
                                child: Image.asset(
                                  "assets/cursive/Layer_2.png",
                                  width: 65.w,
                                  height: 65.h,
                                ),
                              ),
                              Positioned(
                                left: 30.w,
                                bottom: 15.h,
                                child: Image.asset(
                                  "assets/cursive/Group_2340.png",
                                  width: 60.w,
                                  height: 60.h,
                                ),
                              ),
                              Positioned(
                                right: 65.w,
                                bottom: 10.h,
                                child: Image.asset(
                                  "assets/cursive/Vector_3.png",
                                  width: 70.w,
                                  height: 70.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 25.h),

                      // 🔹 Second Heading
                      Container(
                        height: 55.h,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 166, 166, 166),
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Text(
                            "Junior AI Challenges, 2025",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12.h),

                      // 🔹 Beginner + Icon
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Row(
                          children: [
                            Text(
                              "Beginner",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                            const Spacer(),
                            Icon(Icons.star, color: Colors.white, size: 22.sp),
                          ],
                        ),
                      ),

                      SizedBox(height: 12.h),

                      // 🔹 Second Box
                      Container(
                        height: 180.h,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 166, 166, 166),
                          ),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Stack(
                          alignment: Alignment
                              .center, // 🔹 Center everything by default
                          children: [
                            // 🔹 First Image (slightly lower)
                            Positioned(
                              bottom: 25.h,
                              child: Image.asset(
                                "assets/cursive/Group_2342.png",
                                width: 80.w,
                                height: 80.h,
                              ),
                            ),

                            // 🔹 Second Image (slightly above or overlapping)
                            Positioned(
                              top: 20.h,
                              child: Image.asset(
                                "assets/cursive/Group_2344.png",
                                width: 140.w,
                                height: 140.h,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 25.h),

                      // 🔹 Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40.w,
                            vertical: 12.h,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Chatgpt(),
                            ),
                          );
                        },
                        child: Text(
                          "Next Page",
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
