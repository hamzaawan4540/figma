import 'package:auto_size_text/auto_size_text.dart';
import 'package:figma/checked_2.dart';
import 'package:flutter/material.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Section
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.close, color: Colors.white),
                    SizedBox(height: screenHeight * 0.03),

                    // Heading
                    AutoSizeText(
                      "Fill In The Gap!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    AutoSizeText(
                      "Imagine you don’t have time to think\n"
                      "about ingredients, & you do not want\n"
                      "to choose between toasted or fresh\n"
                      "bread. How would you ask ChatGPT\n"
                      "to save you some time?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        height: 1.4,
                      ),
                      minFontSize: 12,
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // 🔹 ChatGPT Label Box
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 117, 117, 117),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/chatgpt-icon.png",
                          width: screenWidth * 0.08,
                          height: screenWidth * 0.08,
                        ),
                        const SizedBox(width: 10),
                        AutoSizeText(
                          "ChatGPT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Task Box
              Center(
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color.fromARGB(255, 168, 166, 166)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "Task me a clarification recipe So i would not need to think about subject.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.045,
                          ),
                          minFontSize: 12,
                          maxLines: 3,
                        ),

                        const Spacer(),

                        // 🔹 Tags Row
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              buildTag("Ingredients", screenWidth),
                              const SizedBox(width: 10),
                              buildTag("Specific", screenWidth),
                              const SizedBox(width: 10),
                              buildTag("Give", screenWidth),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // 🔹 Check Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 164, 231, 76),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.15,
                      vertical: screenHeight * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Checked2()),
                    );
                  },
                  child: AutoSizeText(
                    "Check",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable Tag Widget
  Widget buildTag(String text, double screenWidth) {
    return Container(
      width: screenWidth * 0.28,
      height: screenWidth * 0.12,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 117, 117, 117),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: AutoSizeText(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.035,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
