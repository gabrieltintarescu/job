// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/RecentJobCard.dart';
import '../utils/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Uber', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Product Dev', 'lib/icons/google.png', 80],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 90],
    ['Uber', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Product Dev', 'lib/icons/google.png', 80],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 90],
  ];

  final List recentJobs = [
    // [companyName, jobTitle, logoImagePath, hourlyRate]
    ['Nike', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Amazon', 'Product Dev', 'lib/icons/google.png', 80],
    ['BestBuy', 'Software Eng.', 'lib/icons/apple.png', 90],
    ['Facebook', 'UI Designer', 'lib/icons/uber.png', 45],
    ['DHL', 'Product Dev', 'lib/icons/google.png', 80],
    ['Adidas', 'Software Eng.', 'lib/icons/apple.png', 90],
    ['Nike', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Amazon', 'Product Dev', 'lib/icons/google.png', 80],
    ['BestBuy', 'Software Eng.', 'lib/icons/apple.png', 90],
    ['Facebook', 'UI Designer', 'lib/icons/uber.png', 45],
    ['DHL', 'Product Dev', 'lib/icons/google.png', 80],
    ['Adidas', 'Software Eng.', 'lib/icons/apple.png', 90],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 75),
          // App Bar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8),
              child: Image.asset('lib/icons/menu_from_left.png'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(5, 5),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, -5),
                        blurRadius: 8)
                  ]),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // discover a new path

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          const SizedBox(height: 25),

          //Search box!

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(0, 0),
                              blurRadius: 20)
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                              height: 25,
                              child: Image.asset('lib/icons/search.png',
                                  color: Colors.grey[600])),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search for a job..'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(0, 0),
                            blurRadius: 20)
                      ]),
                  child: Image.asset('lib/icons/preferences.png'),
                )
              ],
            ),
          ),

          const SizedBox(height: 50),

          //for u and job cards

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          const SizedBox(height: 25),

          Container(
            height: 200,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),

          const SizedBox(height: 50),

          //for u and job cards

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          Container(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: recentJobs[index][0],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                    hourlyRate: recentJobs[index][3],
                  );
                },
              ),
            ),
          )

          //recently add job title
        ]),
      ),
    );
  }
}
