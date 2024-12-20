import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:vehup/screens/profile.dart';
import 'package:vehup/screens/requrements_list.dart';
import 'package:vehup/widgets/svgs.dart';
import 'home_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


  final List<Widget> _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    RequirementListPage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        automaticallyImplyLeading: false,
        title: SvgPicture.string(VehUpSvgs().vehUpSplash,height: 25,),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: _pages[_page],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        items: <Widget>[
          SvgPicture.string(VehUpSvgs().homeIcon,color: _page==0?Colors.white:Color(0xff4A101D),),
          SvgPicture.string(VehUpSvgs().msgIcon,color: _page==1?Colors.white:Color(0xff4A101D),),
          SvgPicture.string(VehUpSvgs().sellIcon,color: _page==2?Colors.white:Color(0xff4A101D),),
          SvgPicture.string(VehUpSvgs().requrement,color: _page==3?Colors.white:Color(0xff4A101D),),
          SvgPicture.string(VehUpSvgs().profile,color: _page==4?Colors.white:Color(0xff4A101D),),

        ],
        color: Colors.white,
        buttonBackgroundColor: Color(0xff4A101D),
        backgroundColor: Color(0xffF6F6F6),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),

    );
  }
}
