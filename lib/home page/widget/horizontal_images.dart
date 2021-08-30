
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/colors/colors.dart';

class HorizontalImages extends StatefulWidget {

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<HorizontalImages> {



  @override
  Widget build(BuildContext context) {

    return  Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.12,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.67,
      //color: Colors.red,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Stack(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.12,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage( "assets/watering-cactus 2.png",),
                          fit: BoxFit.fill
                      ),
                      //color: Colors.red
                    ),
                  ),



                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.030,
                        width: MediaQuery.of(context).size.width*0.060,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //     image: new AssetImage( "assets/cross.png",),
                          //     fit: BoxFit.fill,
                          //    )
                        ),
                        child: Image.asset('assets/cross.png',height: 10,width: 10,
                          color: AppColors.kRed,),
                      ),
                    ),
                  ),


                ]
            ),


            SizedBox(width: 5.0,),

            Stack(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage( "assets/watering-cactus 2.png",),
                          fit: BoxFit.fill
                      ),
                      //color: Colors.red
                    ),
                  ),



                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.030,
                        width: MediaQuery.of(context).size.width*0.060,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //     image: new AssetImage( "assets/cross.png",),
                          //     fit: BoxFit.fill,
                          //    )
                        ),
                        child: Image.asset('assets/cross.png',height: 10,width: 10,
                          color: AppColors.kRed,),
                      ),
                    ),
                  ),


                ]
            ),

            SizedBox(width: 5.0,),

            Stack(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage( "assets/watering-cactus 2.png",),
                          fit: BoxFit.fill
                      ),
                      //color: Colors.red
                    ),
                  ),



                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.030,
                        width: MediaQuery.of(context).size.width*0.060,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //     image: new AssetImage( "assets/cross.png",),
                          //     fit: BoxFit.fill,
                          //    )
                        ),
                        child: Image.asset('assets/cross.png',height: 10,width: 10,
                          color: AppColors.kRed,),
                      ),
                    ),
                  ),


                ]
            ),



            SizedBox(width: 5.0,),

            Stack(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage( "assets/watering-cactus 2.png",),
                          fit: BoxFit.fill
                      ),
                      //color: Colors.red
                    ),
                  ),



                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.030,
                        width: MediaQuery.of(context).size.width*0.060,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //     image: new AssetImage( "assets/cross.png",),
                          //     fit: BoxFit.fill,
                          //    )
                        ),
                        child: Image.asset('assets/cross.png',height: 10,width: 10,
                          color: AppColors.kRed,),
                      ),
                    ),
                  ),


                ]
            ),



            SizedBox(width: 5.0,),

            Stack(
                children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage( "assets/watering-cactus 2.png",),
                          fit: BoxFit.fill
                      ),
                      //color: Colors.red
                    ),
                  ),



                  InkWell(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0,0,0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.030,
                        width: MediaQuery.of(context).size.width*0.060,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //     image: new AssetImage( "assets/cross.png",),
                          //     fit: BoxFit.fill,
                          //    )
                        ),
                        child: Image.asset('assets/cross.png',height: 10,width: 10,
                          color: AppColors.kRed,),
                      ),
                    ),
                  ),


                ]
            ),

          ]
      ),
    );



  }

}