import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:figma/profile.dart';
import 'package:figma/chatgpt.dart';
import 'package:figma/chat_gpt2.dart';
import 'package:figma/cursive.dart';
import 'package:figma/cursive_2.dart';
import 'package:figma/chellenges.dart';
import 'package:figma/prompts_library.dart';
import 'package:figma/recommended_for_u.dart';
import 'package:figma/setting.dart';
import 'package:figma/check.dart';
import 'package:figma/checked_2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                
                // Welcome Text
                Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.h),
                
                // Cursive Logo
                Image.asset(
                  "assets/cursive/Coursiv.png",
                  height: 120.h,
                  width: 200.w,
                ),
                
                SizedBox(height: 20.h),
                
                Text(
                  "App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                SizedBox(height: 40.h),
                
                Text(
                  "Explore all features",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                
                SizedBox(height: 40.h),
                
                // Navigation Buttons
                _buildNavigationButton(
                  context,
                  "Profile",
                  "Manage your profile and settings",
                  Icons.person,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile())),
                ),
                
                _buildNavigationButton(
                  context,
                  "ChatGPT",
                  "AI-powered conversations",
                  Icons.chat,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Chatgpt())),
                ),
                
                _buildNavigationButton(
                  context,
                  "ChatGPT 2",
                  "Enhanced AI experience",
                  Icons.chat_bubble,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatGpt2())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Cursive",
                  "Handwriting practice",
                  Icons.edit,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Cursive())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Cursive 2",
                  "Advanced writing tools",
                  Icons.draw,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Cursive2())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Challenges",
                  "Test your skills",
                  Icons.emoji_events,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Chellenges())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Prompts Library",
                  "AI tool collection",
                  Icons.library_books,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => PromptsLibrary())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Recommended",
                  "Personalized suggestions",
                  Icons.recommend,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecommendedForU())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Check",
                  "Verification and validation",
                  Icons.check_circle,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Check())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Checked 2",
                  "Advanced checking tools",
                  Icons.verified,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Checked2())),
                ),
                
                _buildNavigationButton(
                  context,
                  "Settings",
                  "App preferences",
                  Icons.settings,
                  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Setting())),
                ),
                
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButton(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 80.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 92, 161, 119),
                Color.fromARGB(255, 52, 102, 70),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 24.sp,
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
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
        ),
      ),
    );
  }
}