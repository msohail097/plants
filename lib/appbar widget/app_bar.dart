
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants/colors/colors.dart';

class CustomAppBar extends StatefulWidget {

  final String title;
  CustomAppBar({@required this.title});
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.kGreen,
            toolbarHeight: 120, // default is 56
            toolbarOpacity: 0.5,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Stack(
                children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35,0,0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.070,
                      width:  MediaQuery.of(context).size.width*1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0,0,0),
                        child: Text(widget.title,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 30 *
                                      MediaQuery.textScaleFactorOf(
                                          context),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),

                            )),
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,95,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.040,
                        width: MediaQuery.of(context).size.width*0.80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30), topLeft: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                            ],
                            color: Colors.white

                        ),
                        child:    Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,0,0,0),
                              child: Icon(Icons.search,color: AppColors.kGreen,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,0,0),
                              child: Text('search for your question',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 13 *
                                          MediaQuery.textScaleFactorOf(
                                              context),
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.kGrey,
                                    ),

                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),

            shape: ContinuousRectangleBorder(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(90.0),
                  bottomRight: Radius.circular(90.0)
              ),),

          ),

          body: Container(
            height: 0,
            width: 0,
          )

      ),
    );


  }

}