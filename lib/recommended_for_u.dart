import 'package:figma/check.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RecommendedForU extends StatelessWidget {
  const RecommendedForU({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

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
        title: const Text(
          "Recommended for you",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Horizontal scroll row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05, top: height * 0.02),
                    child: buildCategoryButton(width * 0.28, height, "Marketing"), // normal width
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.025, top: height * 0.02),
                    child: buildCategoryButton(width * 0.38, height, "Self Improvement"), // wider
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.025, top: height * 0.02, right: width * 0.025),
                    child: buildCategoryButton(width * 0.28, height, "Business"), // normal width
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.03),

            // Course cards
            buildCourseCard(context, width, height, "assets/recommended/Group_2349.png", "Affiliate Marketing", "5 hour"),
            SizedBox(height: height * 0.02),
            buildCourseCard(context, width, height, "assets/recommended/Vector.png", "SMM Niche Builder", "5 hour"),
            SizedBox(height: height * 0.02),
            buildCourseCard(context, width, height, "assets/recommended/Group_2350.png", "Copywriting Foundation", "5 hour"),
            SizedBox(height: height * 0.02),
            buildCourseCard(context, width, height, "assets/recommended/Group_2354.png", "SMM Algorithms", "5 hour"),
            SizedBox(height: height * 0.02),
            buildCourseCard(context, width, height, "assets/recommended/Group_2352.png", "AI Marketing", "5 hour"),
            SizedBox(height: height * 0.02),
            buildCourseCard(context, width, height, "assets/recommended/Group_2355.png", "Brand Building", "5 hour"),
            SizedBox(height: height * 0.03),

            // Next button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                  vertical: height * 0.02,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Check()),
                );
              },
              child: const Text("Next Page"),
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }

  // Category button builder with custom width
  Widget buildCategoryButton(double width, double height, String title) {
    return Container(
      height: height * 0.06,
      width: width, // custom width
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 66, 55),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: AutoSizeText(
          title,
          style: const TextStyle(color: Colors.white),
          maxFontSize: 20,
          minFontSize: 12,
        ),
      ),
    );
  }

  // Course card builder
  Widget buildCourseCard(BuildContext context, double width, double height, String img, String title, String time) {
    return Container(
      height: height * 0.09,
      width: width * 0.83,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 66, 55),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.05),
        child: Row(
          children: [
            Image.asset(
              img,
              height: height * 0.05,
              width: width * 0.11,
              fit: BoxFit.cover,
            ),
            SizedBox(width: width * 0.05),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    title,
                    style: const TextStyle(color: Colors.white),
                    maxFontSize: 20,
                    minFontSize: 12,
                  ),
                  SizedBox(height: height * 0.005),
                  AutoSizeText(
                    time,
                    style: const TextStyle(color: Colors.white),
                    maxFontSize: 14,
                    minFontSize: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
