import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehup/cache/save_user_data.dart';
import 'package:vehup/screens/dashboard.dart';
import 'package:vehup/screens/splash_screen.dart';
import 'package:vehup/services/authentication/audentication_bloc.dart';
import 'package:vehup/services/datasourse.dart';
import 'package:vehup/services/vehicle_bloc/vehicle_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final bool isLoggedIn = await checkLoginStatus();
  runApp( MyApp(isLoggedIn: isLoggedIn,));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AudenticationBloc(AuthRepository()),
        ),
        BlocProvider(
          create: (context) => VehicleBloc(AuthRepository()),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: isLoggedIn?Dashboard():SplashScreen(),
      ),
    );
  }
}
Future<bool> checkLoginStatus() async {
  final loginData = await getLoginData();
  return loginData != null;
}
