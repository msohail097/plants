
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants/colors/colors.dart';

class FormItems extends StatefulWidget {
  final question;
  FormItems({@required this.question});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<FormItems> {

  bool _arrowButtonDown=false;
  bool _arrowButtonUp=false;

  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.50,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.90,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            border: Border.all(
              color: Colors.white, //                   <--- border color
              width: 2.0,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
            color: Colors.white,
          ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(height: 10,
            //color: Colors.red,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Image(image: AssetImage('assets/Ellipse 1.png',)),

                Column(
                  children: [
                    Center(child:
                    Text('Vaasu kakuturu',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15 *
                                  MediaQuery.textScaleFactorOf(
                                      context),
                              fontWeight: FontWeight.w600,
                              color: AppColors.kGreen
                          ),

                        )),),

                    Text('16 hr ago',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15 *
                                  MediaQuery.textScaleFactorOf(
                                      context),
                              fontWeight: FontWeight.w600,
                              color: AppColors.kGrey
                          ),

                        )),

                  ],
                ),


                  InkWell(
                    onTap: (){

                      setState(() {
                        _arrowButtonDown =true;
                        _arrowButtonUp=false;

                      });


                    },
                    child: Container(
                        decoration: BoxDecoration(
                        color: _arrowButtonDown? AppColors.kGreenarrow:AppColors.kGrey,
                        shape: BoxShape.circle
                      ),

                      child: Icon(Icons.keyboard_arrow_up),
                     ),
                  ),
                Text('1.6k',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15 *
                              MediaQuery.textScaleFactorOf(
                                  context),
                          fontWeight: FontWeight.w600,
                          color: AppColors.kGreen
                      ),

                    )),




                InkWell(
                  onTap: ()async{

                    setState(() {

                      _arrowButtonDown =false;
                      _arrowButtonUp=true;

                    });

                    },
                  child:

                  Container(
                    decoration: BoxDecoration(
                        color: _arrowButtonUp?  AppColors.kGreenarrow:AppColors.kGrey,
                        shape: BoxShape.circle
                    ),

                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                ),





                Container(
                  //margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 20,
                  width: 3,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.4),
                      width: 2.0,
                    ),
                ),
                ),

                Image(image: AssetImage('assets/Vector.png',)),
                Text('53',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15 *
                              MediaQuery.textScaleFactorOf(
                                  context),
                          fontWeight: FontWeight.w600,
                          color: AppColors.kGreen
                      ),

                    )),

              ],
            ),





            Text(widget.question,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 20 *
                          MediaQuery.textScaleFactorOf(
                              context),
                      fontWeight: FontWeight.w600,
                      color: AppColors.kGreen
                  ),

                )),


            Flexible(
              child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.30,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.90,
                  // color: Colors.red,
                  child: Image.asset('assets/watering-cactus 1.png',fit: BoxFit.fill,
                  )
              ),
            ),



          ],
        )





      ),
    );


  }

}