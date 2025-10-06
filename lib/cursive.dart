import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:figma/cursive_2.dart';
import 'package:flutter/material.dart';

class Cursive extends StatelessWidget {
  const Cursive({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive font size function
    double responsiveFont(double size) {
      return size * (screenWidth / 400);
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        centerTitle: true,
        title: Text(
          "Coursiv",
          style: TextStyle(
            color: Colors.white,
            fontSize: responsiveFont(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ⚡ Badge
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Container(
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 149, 149, 149),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bolt,
                          color: Colors.yellow, size: responsiveFont(28)),
                      const SizedBox(width: 3),
                      Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: responsiveFont(20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            // Weekly Reward Container
            Center(
              child: Container(
                width: screenWidth * 0.9,
                padding: EdgeInsets.all(screenWidth * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.bolt,
                        color: Colors.yellow, size: responsiveFont(32)),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: responsiveFont(16),
                          ),
                          children: const [
                            TextSpan(text: "weekly "),
                            TextSpan(
                              text: "Lesson ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "to win your "),
                            TextSpan(
                              text: "Reward...!",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.04),

            // Days Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
                    .map(
                      (day) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: screenWidth * 0.22,
                          height: screenHeight * 0.07,
                          decoration: DottedDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: Shape.box,
                            strokeWidth: 0.5,
                            color: const Color.fromARGB(255, 151, 151, 151),
                          ),
                          child: Center(
                            child: Text(
                              day,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: responsiveFont(18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Pick up where you left off...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsiveFont(20),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.white.withOpacity(0.3),
                        offset: const Offset(1, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.05),

            // ChatGPT Icon Stack
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Image.asset(
                    "assets/chatgpt-icon.png",
                    width: screenWidth * 0.45,
                    height: screenWidth * 0.45,
                  ),
                ),
                Positioned(
                  top: -20,
                  left: screenWidth * 0.65,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/Vector.png",
                        width: screenWidth * 0.15,
                        height: screenWidth * 0.15,
                      ),
                      Text(
                        "GPT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: responsiveFont(16),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.03),

            // ChatGPT Progress Box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ChatGPT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsiveFont(18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: screenWidth * 0.55,
                          height: 5,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Container(height: 5, color: Colors.grey),
                        ),
                        const SizedBox(width: 8),
                        Transform.translate(
                          offset: const Offset(-5, -25),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor:
                                const Color.fromARGB(255, 197, 249, 137),
                            child: const Icon(
                              Icons.check,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.03),

            // Continue Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: Size(screenWidth * 0.7, screenHeight * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cursive2()),
                );
              },
              child: Text(
                "Continue learning",
                style: TextStyle(fontSize: responsiveFont(16)),
              ),
            ),

            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
