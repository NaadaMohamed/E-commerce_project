import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rana_waleed/sign_up.dart';
import 'package:rana_waleed/splash_screen.dart';
import 'package:rana_waleed/theme_helper.dart';

import 'forget_password.dart';
import 'header.dart';
import 'home_screen.dart';
import 'login_screen.dart';


class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _profilePageState();
  }

}
class _profilePageState extends State<ProfilePage>{

  double _drawerIconSize=24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page' ,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor,Theme.of(context).accentColor,]

              )
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 16, right: 16,),
            child: Stack(
              children:<Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: BoxConstraints(minWidth: 12, minHeight: 12,),
                    child: Text('5',style:TextStyle(color:Colors.white, fontSize: 8,),textAlign: TextAlign.center,),
                  ),
                )
              ],

            ),
          ),

        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).accentColor.withOpacity(0.5),
                ]
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color:  Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [Theme.of(context).primaryColor,Theme.of(context).accentColor],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("Fluter Tuturial .Net",
                    style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Splash Screen',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SplashScreen(title:"Splash Screen")));
                },
              ),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Login Page',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor,height: 1,),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Forgot Passwored Page',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassworedPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor,height: 1,),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Product Screen',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor,height: 1,),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Registration Page',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor,height: 1,),
              ListTile(
                leading: Icon(Icons.screen_lock_landscape_rounded,size:_drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Logout',style: TextStyle(fontSize: 17 , color: Theme.of(context).accentColor),),
                onTap:(){
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
              alignment: Alignment.center,
              margin:EdgeInsets.fromLTRB(25, 10,25, 10),
              padding: EdgeInsets.fromLTRB(10, 0,10, 0) ,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5,color:Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color:Colors.black12,blurRadius: 20, offset: const Offset(5, 5),),
                      ],
                    ),
                    child: Icon(Icons.person, size:80,color:Colors.grey.shade300,),
                  ),
                  SizedBox(height:20,),
                  Text('My profile',style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height:20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'User Information',
                              style: TextStyle(
                                color:Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Card(
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding:EdgeInsets.all(15),
                              child: Column(
                                children: <Widget> [
                                  Column(
                                    children:<Widget> [
                                      ...ListTile.divideTiles(
                                          color: Colors.grey,
                                          tiles:[
                                            ListTile(
                                              contentPadding: EdgeInsets.symmetric(
                                                  horizontal: 12,vertical: 4),
                                              leading: Icon(Icons.my_location),
                                              title:Text("Location"),
                                              subtitle:Text("USA"),
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.email),
                                              title: Text("Email"),
                                              subtitle: Text("Rana@gmail.com"),
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.phone),
                                              title: Text("phone"),
                                              subtitle: Text("99-76-56-41"),
                                            ),
                                            Container(
                                              decoration: ThemeHelper().buttonBoxDecoration(context),
                                              child: ElevatedButton(
                                                style: ThemeHelper().bottonStyle(),
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                                    child: Text('Go to product Screen'.toUpperCase(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),)
                                                ),
                                                onPressed: (){
                                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                                },
                                              ),
                                            ),


                                          ]
                                      )

                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ]
                    ),
                  )
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
