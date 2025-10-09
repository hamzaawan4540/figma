import 'package:figma/chellenges.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Checked2 extends StatelessWidget {
  const Checked2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Top Row
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Icon(Icons.arrow_back_ios_rounded,
                          color: Colors.white, size: screenWidth * 0.06),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.20,
                    height: screenHeight * 0.007,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.007,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    "Aa",
                    style: TextStyle(
                        color: Colors.white, fontSize: screenWidth * 0.05),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Icon(Icons.volume_down_rounded,
                      color: Colors.white, size: screenWidth * 0.1),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),

              // 🔹 Question Title
              AutoSizeText(
                "What is a Large Language Model?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              SizedBox(height: screenHeight * 0.02),

              // 🔹 Info Box
              Center(
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0.9,
                      colors: [
                        const Color.fromARGB(255, 138, 197, 140).withOpacity(0.4),
                        const Color.fromARGB(255, 41, 88, 44).withOpacity(0.4),
                      ],
                      stops: const [0.1, 0.9],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.03),
                    child: AutoSizeText(
                      "Picture a giant library filled\n"
                      "with every book, article, &\n"
                      "webpage ever written. Now\n"
                      "imagine a super smart librarian\n"
                      "& can understand & generate\n"
                      "human-like text based on all\n"
                      "that knowledge. That's\n"
                      "essentially what an LLM is!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        height: 1.4,
                      ),
                      maxLines: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // 🔹 Book Image
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/recommended/book_1.png",
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // 🔹 Continue Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 5,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.18,
                        vertical: screenHeight * 0.02),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Chellenges()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: screenWidth * 0.06),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
