import 'package:figma/check.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; // 👈 ye add karo pubspec.yaml me bhi

class RecommendedForU extends StatelessWidget {
  const RecommendedForU({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 66, 55),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: AutoSizeText(
                          "Marketing",
                          style: TextStyle(color: Colors.white),
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 66, 55),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: AutoSizeText(
                          "Self Improvement",
                          style: TextStyle(color: Colors.white),
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 30,
                      right: 10,
                    ),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 66, 55),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: AutoSizeText(
                          "Business",
                          style: TextStyle(color: Colors.white),
                          maxFontSize: 20,
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.04),

            // Ek course card (yahi structure sab cards ke liye repeat karna hai)
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Group_2349.png",
              "Affiliate Marketing",
              "5 hour",
            ),

            SizedBox(height: height * 0.02),
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Vector.png",
              "SMM Niche Builder",
              "5 hour",
            ),

            SizedBox(height: height * 0.02),
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Group_2350.png",
              "Copywriting Foundation",
              "5 hour",
            ),

            SizedBox(height: height * 0.02),
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Group_2354.png",
              "SMM Algorithms",
              "5 hour",
            ),

            SizedBox(height: height * 0.02),
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Group_2352.png",
              "AI Marketing",
              "5 hour",
            ),

            SizedBox(height: height * 0.02),
            buildCourseCard(
              context,
              width,
              height,
              "assets/recommended/Group_2355.png",
              "Brand Building",
              "5 hour",
            ),

            SizedBox(height: height * 0.04),

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
            SizedBox(height: 20,)
          ],
        ),
        
      ),
      
    );
  }

  Widget buildCourseCard(
    BuildContext context,
    double width,
    double height,
    String img,
    String title,
    String time,
  ) {
    return Container(
      height: height * 0.12,
      width: width * 0.85,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 66, 55),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Image.asset(
              img,
              height: height * 0.06,
              width: width * 0.12,
              fit: BoxFit.cover,
            ),
            SizedBox(width: width * 0.06),
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
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
