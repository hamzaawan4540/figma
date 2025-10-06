import 'package:figma/cursive.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:figma/prompts_library.dart';


class PromptsLibrary extends StatelessWidget {
  const PromptsLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 75, 75, 75),
          centerTitle: true,
          title:
              const Text("Prompts Library", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cursive()),
                );
              },
              icon: const Icon(Icons.arrow_forward),
            )
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Container 1
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Basic Application",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 2
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Productivity",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 3
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Sales",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 4
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Sales",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 5
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Investing",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 6
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "WebDevolpment & No-Code Prompts",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 22),
                              overflow: TextOverflow.visible,
                              softWrap: false,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 7
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Customer Support",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 8
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "Conversion Rate Optimisation ",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 22),
                              overflow: TextOverflow.visible,
                              softWrap: false,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 9
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "Products Management Prompts ",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 22),
                              overflow: TextOverflow.visible,
                              softWrap: false,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Container 10
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 53, 73, 53),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "Human Resorces",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child:
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
