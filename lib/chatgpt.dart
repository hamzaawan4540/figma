import 'package:auto_size_text/auto_size_text.dart';
import 'package:figma/chat_gpt2.dart';
import 'package:flutter/material.dart';

class Chatgpt extends StatelessWidget {
  const Chatgpt({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        centerTitle: true,
        title: AutoSizeText(
          "ChatGPT",
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05),
          maxLines: 1,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 117, 116, 116),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, size: 16, color: Colors.white),
                ),
                const SizedBox(width: 10),
                AutoSizeText(
                  "61%",
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 Top Container
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.05),
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.07),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "Level 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        AutoSizeText(
                          "Basics of ChatGPT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.03),

            // 🔹 Steps Column
            Column(
              children: [
                buildStep(
                  context,
                  "ChatGPT as LLM",
                  screenHeight,
                  screenWidth,
                ),
                buildStep(
                  context,
                  "Intro to prompting",
                  screenHeight,
                  screenWidth,
                ),
                buildStep(
                  context,
                  "Feed ChatGPT with Data",
                  screenHeight,
                  screenWidth,
                ),
                buildStep(
                  context,
                  "ChatGPT for SMM",
                  screenHeight,
                  screenWidth,
                  showLine: false,
                ),
                SizedBox(height: screenHeight * 0.05),

                // 🔹 Next Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: Size(screenWidth * 0.7, screenHeight * 0.07),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatGpt2()),
                    );
                  },
                  child: AutoSizeText(
                    "Next Page",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Step Widget (reusable)
  Widget buildStep(BuildContext context, String text,
      double screenHeight, double screenWidth,
      {bool showLine = true}) {
    return Column(
      children: [
        Image.asset(
          "assets/tick_icon.png",
          width: screenWidth * 0.2,
          height: screenWidth * 0.2,
        ),
        SizedBox(height: screenHeight * 0.01),
        AutoSizeText(
          text,
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.035),
          maxLines: 1,
        ),
        SizedBox(height: screenHeight * 0.01),
        if (showLine)
          Container(
            height: screenHeight * 0.08,
            width: 2,
            color: Colors.white,
          ),
        SizedBox(height: screenHeight * 0.01),
      ],
    );
  }
}
