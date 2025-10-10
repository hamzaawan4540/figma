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
        title: AutoSizeText(
          "ChatGPT",
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05),
          maxLines: 1,
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02,
              vertical: screenHeight * 0.01,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
              vertical: screenHeight * 0.005,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 117, 116, 116),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.008),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 94, 206, 112),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, size: 14, color: Colors.white),
                ),
                SizedBox(width: screenWidth * 0.02),
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

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 🔹 Top Container
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Level 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.038,
                        ),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Basics of ChatGPT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),

                // 🔹 Steps Column
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),

            ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStep(
    BuildContext context,
    String text,
    double screenHeight,
    double screenWidth, {
    bool showLine = true,
  }) {
    return Column(
      children: [
        Image.asset(
          "assets/tick_icon.png",
          width: screenWidth * 0.18,
          height: screenWidth * 0.18,
        ),
        AutoSizeText(
          text,
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.035),
          maxLines: 1,
        ),
        if (showLine)
          Container(height: screenHeight * 0.06, width: 2, color: Colors.white),
      ],
    );
  }
}
