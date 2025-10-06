import 'package:auto_size_text/auto_size_text.dart';
import 'package:figma/recommended_for_u.dart';
import 'package:flutter/material.dart';

class ChatGpt2 extends StatelessWidget {
  const ChatGpt2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              // Title
              Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  "What is ChatGPT?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.055, // responsive size
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: screenHeight * 0.05),

              // Main Info Container
              Container(
                width: screenWidth * 0.9,
                padding: EdgeInsets.all(screenWidth * 0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 0.9,
                    colors: [
                      const Color.fromARGB(255, 114, 165, 116).withOpacity(0.4),
                      const Color.fromARGB(255, 28, 72, 31).withOpacity(0.4),
                    ],
                    stops: const [0.1, 0.9],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoSizeText(
                      "ChatGPT is a generative AI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    AutoSizeText(
                      "Chatbot developed by\n"
                      "OpenAI that uses natural\n"
                      "language processing to engage\n"
                      "in conversational interactions\n"
                      "and generate various forms of\n"
                      "text-based content. It's a\n"
                      "type of artificial intelligence that's\n"
                      "designed to understand and\n"
                      "respond to human language in a\n"
                      "way that feels natural and intuitive.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.04,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 12,
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.07),

              // Next Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.018,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecommendedForU(),
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
