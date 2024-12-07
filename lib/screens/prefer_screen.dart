import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_requirement.dart';

class ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        title: Text('What would you prefer to have?',
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 16,
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceCard(
              icon: Icons.car_crash,
              label: 'Car',
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleRequirementPage()));
              },
            ),
            SizedBox(height: 20),
            ChoiceCard(
              icon: Icons.motorcycle,
              label: 'Bike',
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleRequirementPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ChoiceCard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Icon(
                icon,
                size: 64,
                color: Colors.brown,
              ),
              SizedBox(height: 16),
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}