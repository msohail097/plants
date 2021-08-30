

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google'
    '_fonts/google_fonts.dart';
import 'package:plants/appbar%20widget/app_bar.dart';
import 'package:plants/colors/colors.dart';
import 'package:plants/home%20page/widget/forum_item.dart';
import 'package:plants/home%20page/widget/horizontal_images.dart';
import 'package:plants/main.dart';

class HomeScreen extends StatefulWidget {
  final String question;
  HomeScreen({@required this.question});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  TextEditingController questionCotroller = TextEditingController();
    int i=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.question!=null){
      print(widget.question);
      setState(() {
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
        PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: CustomAppBar(title: 'Forum',)),

        //
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.050,),


          if(widget.question!=null)...[

                FormItems(question: widget.question),
              ]




               else if(widget.question==null)...[

               FormItems(question: 'How often should I water this cactus plant ?',),

                 SizedBox(height: MediaQuery
                     .of(context)
                     .size
                     .height * 0.020,),

                 FormItems(question: 'What plant should I grow in this summer in the Midway of teh US?',),

                      ],



              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),
              Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: () {
                    _showDialog();
                  },
                  color: AppColors.kGreen,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 35,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }




    void _showDialog() {
    String questionText;
      showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return SingleChildScrollView(
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
              child: IntrinsicHeight(
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                              child: Text('Ask a question',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 25 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.kGreen
                                    ),

                                  )),
                            ),




                          ],
                        ),


                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.020,),



                        Container(
                          height: MediaQuery.of(context).size.height*0.25,
                          width: MediaQuery.of(context).size.width*0.80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white, //                   <--- border color
                              width: 2.0,
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                            ],
                            color: Colors.white,
                          ), child:

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                          child: TextFormField(
                            textInputAction: TextInputAction.newline,
                            keyboardType: TextInputType.multiline,
                            maxLines: 10,
                            controller: questionCotroller,
                        onChanged: (String textTyped) {

                                  questionText = textTyped;
                              //  print(questionText);
                                },
                            style: TextStyle(
                                fontSize: 18.0,
                                height: 1.5,
                                color: AppColors.kGreen
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'This is the person typing out a sample question... I have run out of sample question ideas that I can think of and am writing in random text',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kBlackMedium,
                              ),
                              //icon: new Icon(Icons.lock,size: 18.0,),
                            ),
                          ),
                        ),
                        ),







                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.020,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.080,
                              width: MediaQuery.of(context).size.width*0.10,
                              decoration: BoxDecoration(
                                  color:  AppColors.kGreenarrow,
                                  shape: BoxShape.circle
                              ),

                              child: Image.asset('assets/vector2.png',height: 20,width: 20,),
                            ),




                            HorizontalImages(),


                          ],
                        ),



                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.020,),




                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){

                                Navigator.pop(context);

                              },
                              child: Container(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.065,
                                width: MediaQuery.of(context).size.width*0.30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.white, //                   <--- border color
                                    width: 2.0,
                                  ),
                                  color: AppColors.kGrey
                                ),


                                child: Center(
                                  child: Text('Cancel',
                                      style: GoogleFonts.zillaSlab(
                                        textStyle: TextStyle(
                                            fontSize: 20 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.kGreyText
                                        ),

                                      )),
                                ),
                              ),
                            ),




                            InkWell(
                              onTap: (){

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HomeScreen(question: questionText))
                                );
                                print(widget.question);


                              },
                              child: Container(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.065,
                                width: MediaQuery.of(context).size.width*0.30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.white, //                   <--- border color
                                      width: 2.0,
                                    ),
                                    color: AppColors.kGreenarrow
                                ),


                                child: Center(
                                  child: Text('Ask',
                                      style: GoogleFonts.zillaSlab(
                                        textStyle: TextStyle(
                                            fontSize: 20 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.kGreen
                                        ),

                                      )),
                                ),
                              ),
                            ),



                          ],
                        ),


                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.020,),



                      ],
                    ),
              ),
          ),
        );
      },);
  }


}


