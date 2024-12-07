import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehup/screens/total_vehicles.dart';
import 'package:vehup/widgets/svgs.dart';

import '../models/model_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 10),
          child: SvgPicture.string(VehUpSvgs().menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 16),
            child: SvgPicture.string(VehUpSvgs().notification,height: 25,),
          ),
        ],
        backgroundColor: Color(0xffF6F6F6),

      ),

      backgroundColor: Color(0xffF6F6F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            buildCard(VehUpSvgs().totalVehicle, 'Total Vehicles', 100,(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TotalVehiclesScreen()));
            }),
            buildCard(VehUpSvgs().totalBooking, 'Total Bookings', 50,(){}),
            buildCard(VehUpSvgs().c2bConcept, 'C2B Concept', 25,(){}),
            buildCard(VehUpSvgs().sale, 'Vehicle for Sale', 35,(){}),
          ],
        ),
      ),
    );
  }
  Widget buildCard(String icon, String title, int value,VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.string(icon,height: 50,width: 50,),
            SizedBox(height: 10),
            Text('$value', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(title, style: GoogleFonts.roboto(fontSize: 14,color: Color(0xff6F6C7A))),
          ],
        ),
      ),
    );
  }
}
