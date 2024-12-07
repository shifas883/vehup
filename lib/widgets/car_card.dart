import 'package:flutter/material.dart';
import 'package:vehup/models/vehicle_model.dart';

class CarCard extends StatelessWidget {
  final String carName;
  final String price;
  final String listedTime;
  final String year;
  final String mileage;
  final String fuelType;
  final VehicleImage img;

  const CarCard({
    super.key,
    required this.img,
    required this.carName,
    required this.price,
    required this.listedTime,
    required this.year,
    required this.mileage,
    required this.fuelType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(img?.imageUrl ??
                      'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?cs=srgb&dl=pexels-mikebirdy-170811.jpg&fm=jpg',
                    ),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      'SOLD OUT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(listedTime),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.calendar_today,color: Color(0xff4A101D),),
                    SizedBox(width: 8),
                    Text(year),
                    SizedBox(width: 24),
                    Icon(Icons.speed,color: Color(0xff4A101D),),
                    SizedBox(width: 8),
                    Text(mileage),
                    SizedBox(width: 24),
                    Icon(Icons.local_gas_station,color: Color(0xff4A101D),),
                    SizedBox(width: 8),
                    Text(fuelType),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}