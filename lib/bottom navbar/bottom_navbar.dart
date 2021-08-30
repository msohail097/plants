import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants/colors/colors.dart';
import '../settings page/settings.dart';
import '../home page/home.dart';

class Navbar extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<Navbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
        topRight: Radius.circular(30), topLeft: Radius.circular(30)),
    boxShadow: [
    BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
    ],),
    child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0),
          ),

          child: BottomNavigationBar(
            unselectedItemColor: AppColors.kGrey,
            //backgroundColor: Colors.white10,
            //showSelectedLabels: true,
            //showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon:  Icon(Icons.home,size: 30.0,),
                  //activeIcon: new Image.asset("assets/profilefilled.png",height: 32,width: 32,),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('Home', style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ))),
                  )),
              BottomNavigationBarItem(icon: Icon(Icons.people,size: 30.0,),
                  //activeIcon: new Image.asset("assets/homefilled.png",height: 32,width: 32,),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('Profile', style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ))),
                  )),
              BottomNavigationBarItem(
                  icon:  Icon(Icons.settings,size: 30.0,),
                  //activeIcon: new Image.asset("assets/message.png",height: 32,width: 32,),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text('Settings', style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ))),
                  )),

            ],
            onTap: _onTappedBar,
            selectedItemColor: AppColors.kGreen,
            currentIndex: _selectedIndex,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics:NeverScrollableScrollPhysics(),
        children: <Widget>[

          HomeScreen(),
          HomeScreen(),
          Settings(),


        ],
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}