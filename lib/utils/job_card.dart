import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard(
      {required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0, 0),
                  blurRadius: 15)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          child: Image.asset(logoImagePath),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              'Part Time',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.grey[500],
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      jobTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Text('\$' + hourlyRate.toString() + '/hr')
                ]),
          ),
        ),
      ),
    );
  }
}
