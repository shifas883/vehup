import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehup/screens/prefer_screen.dart';

class RequirementListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: ListView(
        children: [
          RequirementCard(
            requirementName: 'Rolls Royce Ghost Standard (2020)',
            transmission: 'Automatic',
            fuelType: 'Petrol',
            color: 'Black',
            status: 'Active',
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
          onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => ChoicePage()));
          },
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF4A101D),
              borderRadius: BorderRadius.circular(8),
            ),
              child: Center(
                child: Text('Create A Requirement',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14
                ),),
              )),
        ),
      ),
    );
  }
}

class RequirementCard extends StatelessWidget {
  final String requirementName;
  final String transmission;
  final String fuelType;
  final String color;
  final String status;

  const RequirementCard({
    super.key,
    required this.requirementName,
    required this.transmission,
    required this.fuelType,
    required this.color,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),

      ),
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              requirementName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text('Transmission: '),
                SizedBox(width: 8),
                Text(transmission),
              ],
            ),
            Row(
              children: [
                Text('Fuel: '),
                SizedBox(width: 8),
                Text(fuelType),
              ],
            ),
            Row(
              children: [
                Text('Color: '),
                SizedBox(width: 8),
                Text(color),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(status),
                SizedBox(width: 8),
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}