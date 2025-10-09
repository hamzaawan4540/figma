import 'package:flutter/material.dart';

class Chellenges extends StatelessWidget {
  const Chellenges({super.key});

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
        
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenHeight * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Title
            Center(
              child: Text(
                "Challenge",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            // 🔹 Challenge Box
            Container(
              width: double.infinity,
              height: screenHeight * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.9,
                  colors: [
                    const Color.fromARGB(255, 152, 215, 154).withOpacity(0.4),
                    const Color.fromARGB(255, 53, 105, 56).withOpacity(0.4),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Text(
                  "Let’s start working on the article. First, you need an outline for your article:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            // 🔹 Open Playground Button
            Container(
              width: double.infinity,
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Open Playground',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            // 🔹 Instruction Text
            Text(
              "Now that we have an outline, what's the next step?",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),

            // 🔹 Checkboxes
            buildCheckbox(
              screenWidth,
              screenHeight,
              "Collect data for the article",
            ),
            SizedBox(height: screenHeight * 0.008),
            buildCheckbox(screenWidth, screenHeight, "Have some rest"),
            SizedBox(height: screenHeight * 0.008),
            buildCheckbox(screenWidth, screenHeight, "Finalize the title"),
            SizedBox(height: screenHeight * 0.008),
            buildCheckbox(
              screenWidth,
              screenHeight,
              "Collect Ask ChatGPT to create an article according to the outline",
            ),

            SizedBox(height: screenHeight * 0.02),

            // 🔹 Hint and Submit Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildGrayButton(screenWidth, screenHeight, "Hint"),
                SizedBox(width: screenWidth * 0.06),
                buildGrayButton(screenWidth, screenHeight, "Submit"),
              ],
            ),
            SizedBox(height: screenHeight * 0.035),

            // 🔹 Continue Button
            Center(
              child: Container(
                width: screenWidth * 0.55,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
          ],
        ),
      ),
    );
  }

  // 🔹 Checkbox Builder
  Widget buildCheckbox(double screenWidth, double screenHeight, String text) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.055,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03),
            child: Icon(
              Icons.check_box_outline_blank,
              size: screenWidth * 0.07,
              color: Colors.white,
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.04,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Gray Button Builder
  Widget buildGrayButton(double screenWidth, double screenHeight, String text) {
    return Container(
      width: screenWidth * 0.35,
      height: screenHeight * 0.055,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 108, 108, 108),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.045),
        ),
      ),
    );
  }
}
