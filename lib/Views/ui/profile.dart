
import 'package:flutter/material.dart';
import 'package:lumine_project/Views/shared/appstyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:
        Column(
          children: [
        Row(
        children: [
        Icon(Icons.arrow_back,size: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 100,top: 20),
          child: Text("My Profile",style: appstyle(30, Colors.black, FontWeight.bold),),
        ),
        ],),
            SizedBox(height: 60,),
            ClipOval(
              child: SizedBox(
                height: 130,
                child: Image.asset('images/image/WhatsApp Image 2024-03-17 at 21.50.16_70280b39.jpg'),
              ),
            ),
            SizedBox(height: 15,),
            Text('NiKi Sandra',style: appstyle(18, Colors.black, FontWeight.w600),),
            Text('NiKiSandra2003@gmail.com',style: appstyle(15, Colors.black, FontWeight.w600),),
                SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                width: 320, // Set your desired width here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number', // Label text for the TextField
                    border: OutlineInputBorder(), // Border around the TextField
                  ),
                  keyboardType: TextInputType.phone, // Set keyboard type to phone
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                width: 320, // Set your desired width here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address', // Label text for the TextField
                    border: OutlineInputBorder(), // Border around the TextField
                  ),
                  keyboardType: TextInputType.emailAddress, // Set keyboard type to phone
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                width: 320, // Set your desired width here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password', // Label text for the TextField
                    border: OutlineInputBorder(), // Border around the TextField
                  ),
                  keyboardType: TextInputType.visiblePassword, // Set keyboard type to phone
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                width: 320, // Set your desired width here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Delivery Address', // Label text for the TextField
                    border: OutlineInputBorder(), // Border around the TextField
                  ),
                  keyboardType: TextInputType.phone, // Set keyboard type to phone
                ),
              ),
            ),

     ] ),
      ) );
  }
}
