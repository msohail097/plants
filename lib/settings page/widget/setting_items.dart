
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants/colors/colors.dart';

class SettingItems extends StatefulWidget {

  final String title;

  var settingIcons;
  SettingItems({ @required this.settingIcons,this.title});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<SettingItems> {

  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.080,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.85,
            //color: AppColors.kBlue,
        child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Icon(widget.settingIcons,size: 30,color: AppColors.kGreen,),

                Center(
                  child: Text(widget.title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20 *
                                MediaQuery.textScaleFactorOf(
                                    context),
                            fontWeight: FontWeight.w700,
                            color: AppColors.kGreen
                        ),

                      )),
                ),

                Icon(Icons.arrow_forward_ios_rounded,size: 30,color: AppColors.kGreen,),

              ],
            ),
            Divider(
              color: Colors.black,
            )
          ],
        ) ,
      ),
    );


  }

}