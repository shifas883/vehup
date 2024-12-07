import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehup/cache/save_user_data.dart';
import 'package:vehup/models/model_class.dart';
import 'package:vehup/models/vehicle_model.dart';
import 'package:vehup/screens/vehicle_details.dart';
import 'package:vehup/services/vehicle_bloc/vehicle_bloc.dart';
import 'package:vehup/widgets/car_card.dart';

class TotalVehiclesScreen extends StatefulWidget {
  const TotalVehiclesScreen({super.key});

  @override
  State<TotalVehiclesScreen> createState() => _TotalVehiclesScreenState();
}

class _TotalVehiclesScreenState extends State<TotalVehiclesScreen> {
  LoginResponse? loginData;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final data = await getLoginData();
    setState(() {
      loginData = data;

      context.read<VehicleBloc>().add(FetchVehicles(loginData!.token));
    });
  }
  List<VehicleData>? vehicleData = [];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return BlocListener<VehicleBloc, VehicleState>(
      listener: (context, state) {
        if(state is VehicleLoaded){

          vehicleData = state.vehicles??[];
          print("veh${vehicleData?.length}");
          setState(() {

          });
        }else if(state is VehicleError){
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          title: Text(
            "Total Vehicles (${vehicleData?.length??0})",
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                setState(() {

                });
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          children: [

            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10,);
                },
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: vehicleData?.length??0,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print(":::::");
                      context.read<VehicleBloc>().add(FetchVehicleDetails(
                        vehicleData?[index].id??0,
                        loginData!.token,
                      ));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              VehicleDetailsPage(
                                year: vehicleData?[index].year??"",
                                carName: vehicleData?[index].uniqueId??"",
                                fuelType: vehicleData?[index].fuelType.name??"",
                                listedTime: vehicleData?[index].listedDays.toString()??"",
                                mileage: vehicleData?[index].totalAmount??"",
                                price: vehicleData?[index].price??"",
                              ),
                        ),
                      );
                    },
                    child: CarCard(
                      img: vehicleData![index].images[0],
                      price: vehicleData?[index].price??"",
                      carName: "POLO",
                      fuelType: vehicleData?[index].fuelType.name??"",
                      listedTime: vehicleData?[index].listedDays.toString()??"",
                      mileage: vehicleData?[index].vehicleType.name??"",
                      year: vehicleData?[index].year??"",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
