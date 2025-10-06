import 'package:figma/profile%20pages/chellenges.dart';
import 'package:figma/profile%20pages/guides.dart';
import 'package:figma/profile%20pages/home.dart';
import 'package:figma/profile%20pages/profile_screen.dart';
import 'package:figma/setting.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Function for responsive font size
    double responsiveFont(double size) {
      return size * (screenWidth / 400);
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 52, 102, 70),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: responsiveFont(22)),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ), // thoda gap dene ke liye
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
              child: Image.asset(
                "assets/Vector_34.png", // apni image ka path
                height: 80,
                width: 60,
                // agar white filter chahiye
              ),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Profile Pic
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.15, // responsive size
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage(
                    "assets/Ellipse_1.png", // apni image ka path
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 4,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                      size: responsiveFont(18),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          Text(
            "Figma98",
            style: TextStyle(color: Colors.white, fontSize: responsiveFont(22)),
          ),
          Text(
            "Figma98@gmail.com",
            style: TextStyle(color: Colors.white, fontSize: responsiveFont(14)),
          ),
          SizedBox(height: screenHeight * 0.05),

          // Container 1
          Center(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: screenHeight * 0.12,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 92, 161, 119),
                      Color.fromARGB(255, 52, 102, 70),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Quiz for more Ai Tools...!',
                        style: TextStyle(
                          fontSize: responsiveFont(20),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 0),
                      Text(
                        "Take a 1-Minute Quiz",
                        style: TextStyle(
                          fontSize: responsiveFont(16),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Container 2
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 69, 85, 69),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prompts Library',
                      style: TextStyle(
                        fontSize: responsiveFont(16),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "All Ai tools available here...!",
                      style: TextStyle(
                        fontSize: responsiveFont(14),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Container 3
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 69, 85, 69),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Image.asset(
                      "assets/chatgpt-icon.png",
                      width: screenWidth * 0.08,
                      height: screenWidth * 0.08,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ChatGpt',
                        style: TextStyle(
                          fontSize: responsiveFont(16),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "61%",
                        style: TextStyle(
                          fontSize: responsiveFont(14),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 92, 161, 119),
              Color.fromARGB(255, 52, 102, 70),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Ai Tools",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.flag),
                label: "Challenges",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: "Guides",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: "Profile",
              ),
            ],
            onTap: (index) {
              // Navigate based on tapped icon
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AiTools()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chellenges()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GuidesScreen()),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
