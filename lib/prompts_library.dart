import 'package:figma/cursive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromptsLibrary extends StatelessWidget {
  const PromptsLibrary({super.key});

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
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        centerTitle: true,
        title: Text(
          "Prompts Library",
          style: TextStyle(color: Colors.white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 24.sp,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cursive()),
              );
            },
            icon: const Icon(Icons.search_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            children: [
              // 1️⃣ Basic Application
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Basic Application",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 2️⃣ Productivity
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Productivity",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 3️⃣ Sales
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Sales",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 4️⃣ Marketing
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Marketing",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 5️⃣ Investing
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Investing",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 6️⃣ Web Development
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Web Development & No-Code Prompts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 7️⃣ Customer Support
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Customer Support",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 8️⃣ Conversion Rate Optimisation
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Conversion Rate Optimisation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 9️⃣ Product Management
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Product Management Prompts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ],
                ),
              ),

              // 🔟 Human Resources
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: const Color.fromARGB(255, 53, 73, 53),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Human Resources",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.sp,
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
