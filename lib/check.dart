import 'package:auto_size_text/auto_size_text.dart';
import 'package:figma/checked_2.dart';
import 'package:flutter/material.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxHeight;
            final width = constraints.maxWidth;

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Close Icon
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: width * 0.08,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),

                  // Main Heading
                  AutoSizeText(
                    "Fill In The Gap!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: height * 0.015),

                  //  Description
                  AutoSizeText(
                    "Imagine you don’t have time to think\n"
                    "about ingredients, & you do not want\n"
                    "to choose between toasted or fresh\n"
                    "bread. How would you ask ChatGPT\n"
                    "to save you some time?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      height: 1.4,
                    ),
                    minFontSize: 12,
                  ),
                  SizedBox(height: height * 0.03),

                  //  ChatGPT Label Box
                  Container(
                    width: double.infinity,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 117, 117, 117),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.001),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/cursive/chatgpt_icon.png",color: const Color.fromARGB(255, 135, 250, 139),
                            width: width * 0.18,
                            height: width * 0.18,
                          ),
                          SizedBox(width: width * 0.003),
                          AutoSizeText(
                            "ChatGPT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.025),

                  //  Task Box
                  Expanded(
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(255, 168, 166, 166),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Task text with rectangular bubbles for specific words
                              Wrap(
                                spacing: width * 0.02,
                                runSpacing: height * 0.01,
                                children: [
                                  buildWordBubble("Task", width),
                                  buildPlainText("me a", width),
                                  buildWordBubble("clarification", width),
                                  buildPlainText("recipe so I", width),
                                  buildPlainText("would not need to think about", width),
                                  buildWordBubble("subject", width),
                                ],
                              ),
                              const Spacer(),

                              //  Tags Row
                              Wrap(
                                spacing: width * 0.03,
                                runSpacing: height * 0.015,
                                children: [
                                  buildTag("Ingredients", width),
                                  buildTag("Specific", width),
                                  buildTag("Give", width),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),

                  //  Check Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              164,
                              231,
                              76,
                            ),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.2,
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
                              MaterialPageRoute(
                                builder: (context) => const Checked2(),
                              ),
                            );
                          },
                          child:
                              AutoSizeText(
                                "Check",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                              ),
                              
                            
                          
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: Icon(Icons.backspace, color: Colors.white, size: 24),

                          )
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // Reusable Tag Widget (Responsive)
  Widget buildTag(String text, double width) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: width * 0.025,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 117, 117, 117),
        borderRadius: BorderRadius.circular(25),
      ),
      child: AutoSizeText(
        text,
        style: TextStyle(color: Colors.white, fontSize: width * 0.035),
        maxLines: 1,
      ),
    );
  }

  // Rectangular Word Bubble Widget for specific words
  Widget buildWordBubble(String text, double width) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: width * 0.015,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 90, 90, 90),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 120, 120, 120),
          width: 1,
        ),
      ),
      child: AutoSizeText(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: width * 0.038,
        ),
        maxLines: 1,
      ),
    );
  }

  // Plain Text Widget (no bubble)
  Widget buildPlainText(String text, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.01,
        vertical: width * 0.015,
      ),
      child: AutoSizeText(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: width * 0.038,
        ),
        maxLines: 1,
      ),
    );
  }
}
