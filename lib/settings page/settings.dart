

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants/appbar%20widget/app_bar.dart';
import 'package:plants/colors/colors.dart';
import 'widget/setting_items.dart';


class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(

        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: CustomAppBar(title: 'Settings')),

        //main container
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SettingItems(settingIcons: Icons.person,title:'Accounts' ),
              SettingItems(settingIcons: Icons.person,title:'Appearance' ),

              SettingItems(settingIcons: Icons.doorbell_sharp,title:'Notifications' ),
              SettingItems(settingIcons: Icons.privacy_tip,title:'Privacy and Security' ),

              SettingItems(settingIcons: Icons.speaker_phone,title:'Sound and Music' ),

              SettingItems(settingIcons: Icons.phone,title:'Help and Support' ),

              SettingItems(settingIcons: Icons.info,title:'About' ),




            ],),
        ),


      )
      ,
    );
  }
}

