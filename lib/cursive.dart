import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:figma/cursive_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cursive extends StatelessWidget {
  const Cursive({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    //  Responsive font helper
    double rf(double size) => size * (screenWidth / 400);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),

      appBar: AppBar(
         title: Image.asset(
              'assets/cursive/Coursiv.png',
              height: 40,
            ),
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
        
      ),

      // 🧱 Body fully fits screen, adjusts with device size
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ⚡ Badge
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: screenWidth * 0.22,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 149, 149, 149),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(25)),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: rf(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.015),

              //  Weekly reward
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(screenWidth * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(28)),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: rf(15),
                          ),
                          children: const [
                            TextSpan(text: "Weekly "),
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

              //  Days row (scrollable only this part)
            SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        // Monday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Mon", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Tuesday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Tue", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Wednesday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Wed", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Thursday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Thu", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Friday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Fri", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Saturday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Sat", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                  
                        // Sunday
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                          child: Container(
                            width: screenWidth * 0.22,
                            height: screenHeight * 0.065,
                            decoration: DottedDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: Shape.box,
                              strokeWidth: 0.5,
                              color: const Color.fromARGB(255, 151, 151, 151),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Icon(Icons.electric_bolt_outlined, color: Colors.yellow, size: rf(20)),
                                SizedBox(width: screenWidth * 0.01),
                                Text("Sun", style: TextStyle(color: Colors.white, fontSize: rf(18))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

              //  Subtitle
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pick up where you left off...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: rf(18),
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

              // 🌀 ChatGPT Icon Stack
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/chatgpt-icon.png",
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: screenWidth * 0.65,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/Vector_2.png",
                          width: screenWidth * 0.13,
                          height: screenWidth * 0.13,
                        ),
                        Text(
                          "GPT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: rf(14),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Progress Bar
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(screenWidth * 0.03),
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
                      style: TextStyle(color: Colors.white, fontSize: rf(17)),
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    // Line + Check Button
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Background line
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            width: double.infinity,
                            height: 5,
                            color: Colors.grey,
                          ),
                        ),

                        // Filled line
                        FractionallySizedBox(
                          widthFactor: 0.55,
                          child: Container(height: 5, color: Colors.white),
                        ),

                        //Check button (on top of the line)
                        Positioned(
                          right: 0,
                          top: -35,
                          child: GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 150, 249, 153),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 3.5,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.black,
                                size: 14.sp, // responsive size
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Continue button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(screenWidth * 0.7, screenHeight * 0.065),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cursive2()),
                  );
                },
                child: Text(
                  "Continue learning",
                  style: TextStyle(fontSize: rf(16)),
                ),
              ),
              SizedBox(height: screenHeight * 0.0010),
            ],
          ),
        ),
      ),
    );
  }
}
