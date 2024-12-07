import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehup/models/vehicle_details.dart';
import 'package:vehup/services/vehicle_bloc/vehicle_bloc.dart';

class VehicleDetailsPage extends StatefulWidget {
  final String carName;
  final String price;
  final String listedTime;
  final String year;
  final String mileage;
  final String fuelType;

  const VehicleDetailsPage({
    super.key,
    required this.carName,
    required this.price,
    required this.listedTime,
    required this.year,
    required this.mileage,
    required this.fuelType,
  });

  @override
  State<VehicleDetailsPage> createState() => _VehicleDetailsPageState();
}

class _VehicleDetailsPageState extends State<VehicleDetailsPage> {
  VehicleDetailsData? vehicleDetailsData;

  @override
  Widget build(BuildContext context) {
    return BlocListener<VehicleBloc, VehicleState>(
      listener: (context, state) {
        if(state is VehicleDetailsLoaded){
          vehicleDetailsData=state.vehicleDetails;
          setState(() {

          });
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        appBar: AppBar(
          backgroundColor: Color(0xffF6F6F6),
          title: Text(widget.carName),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: [
                  Image.network('https://example.com/car_image1.jpg'),
                  Image.network('https://example.com/car_image2.jpg'),
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(widget.listedTime),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 8),
                        Text(widget.year),
                        SizedBox(width: 24),
                        Icon(Icons.speed),
                        SizedBox(width: 8),
                        Text(widget.mileage),
                        SizedBox(width: 24),
                        Icon(Icons.local_gas_station),
                        SizedBox(width: 8),
                        Text(widget.fuelType),
                      ],
                    ),
                  ],
                ),
              ),

              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'Overview'),
                        Tab(text: 'Specification'),
                        Tab(text: 'Features'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 200,
                      child: TabBarView(
                        children: [
                          Container(
                            child: Text('Overview content'),
                          ),
                          Container(
                            child: Text('Specification content'),
                          ),
                          Container(
                            child: Text('Features content'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Mark as Sold'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}