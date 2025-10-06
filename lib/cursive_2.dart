import 'package:figma/chatgpt.dart';
import 'package:flutter/material.dart';

class Cursive2 extends StatelessWidget {
  const Cursive2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
        title: const Text("Coursiv", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First Heading
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 60,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 166, 166, 166),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "28 Day's AI Challenges, 2025",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),

            // Beginner text
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Beginner",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // First Box
            Container(
              height: 200,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 166, 166, 166),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      top: 20,
                      child: Image.asset(
                        "assets/Group2338.png",
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 40,
                      child: Image.asset(
                        "assets/cursive/Group_2339.png",
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: Image.asset(
                        "assets/cursive/Group_2340.png",
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 50,
                      bottom: 30,
                      child: Image.asset(
                        "assets/cursive/Group_2344.png",
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Positioned(
                      right: 40,
                      bottom: 30,
                      child: Image.asset(
                        "assets/cursive/Group_2341.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Second Heading
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 60,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 166, 166, 166),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Junior AI Challenges, 2025",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),

            // Beginner + Icon Row
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Beginner",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  const Spacer(),
                  const Icon(Icons.star, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Second Box
            Container(
              height: 200,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 166, 166, 166),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 45,
                    left: 110,
                    child: Image.asset("assets/cursive/Group_2342.png"),
                  ),
                  Positioned(
                    left: 72,
                    top: 20,
                    child: Image.asset("assets/cursive/Group_2344.png"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chatgpt()),
                );
              },
              child: const Text("Next Page"),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
