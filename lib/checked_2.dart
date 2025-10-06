import 'package:figma/chellenges.dart';
import 'package:flutter/material.dart';

class Checked2 extends StatelessWidget {
  const Checked2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      ),
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 90,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text("Aa", style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(width: 8),
                Icon(Icons.volume_down_rounded, color: Colors.white, size: 40),
              ],
            ),
            Text(
              "What is a Large Language Mode?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 310,
              decoration: BoxDecoration(
                color: Colors.white,
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: Text(
                      "Picture a giant library filled\n"
                      "with every book,article, & \n"
                      "webpage ever written. Now \n"
                      "imagine a super smart librarian\n"
                      "& can understand & generate\n"
                      "human-like text based on tall\n"
                      "that knowledge. That's\n"
                      "essentilly what an LLm is!\n",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Image.asset("assets/recommended/book_1.png"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chellenges()),
                );
              },
              child: const Text("Continue",style: TextStyle(fontSize: 24),),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
