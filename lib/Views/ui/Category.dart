
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lumine_project/Views/shared/appstyle.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
            Row(
              children: [
                Icon(Icons.arrow_back,size: 25,),
                Padding(
            padding: const EdgeInsets.only(left: 100,top: 20),
            child: Text("Category",style: appstyle(30, Colors.black, FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 20),
                  child: Icon(Icons.shopping_bag_outlined,size: 35,),
                ),
            ],),
               Column(
                 children: [
                   SizedBox(
                     child:
                     Padding(
                       padding:  EdgeInsets.only(left: 30,right: 30),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Women" ,style: appstyle(20, Colors.black, FontWeight.w600),),
                           SizedBox(
                               height: 230,
                               width:200,
                               child:
                               Image.asset("images/image/wwww.jpg",)),
                         ],
                       ),
                     ),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(left: 25),
                     child: Row(children: [
                       Icon(
                         AntDesign.caretright,
                         size: 20,
                       ),
                       SizedBox(width: 20,),
                       Text('T-shirts and Crop tops',style: appstyle(15, Colors.black, FontWeight.w600),)
                     ],),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 25),
                     child: Row(children: [
                       Icon(
                         AntDesign.caretright,
                         size: 20,
                       ),
                       SizedBox(width: 20,),
                       Text('Dressers',style: appstyle(15, Colors.black, FontWeight.w600),)
                     ],),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 25),
                     child: Row(children: [
                       Icon(
                         AntDesign.caretright,
                         size: 20,
                       ),
                       SizedBox(width: 20,),
                       Text('Skirts and pants',style: appstyle(15, Colors.black, FontWeight.w600),)
                     ],),
                   ),

                   Container(
                     child:
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Men" ,style: appstyle(20, Colors.black, FontWeight.w600),),
                           SizedBox(
                               height: 200,
                               width:200,
                               child:
                               Image.asset("images/image/WhatsApp Image 2024-03-17 at 21.50.15_94efa4fa.jpg",)),
                         ],
                       ),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left: 25),
                     child: Row(children: [
                       Icon(
                         AntDesign.caretright,
                         size: 20,
                       ),
                       SizedBox(width: 20,),
                       Text('Shirts and T-shirt',style: appstyle(15, Colors.black, FontWeight.w600),)
                     ],),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 25),
                     child: Row(children: [
                       Icon(
                         AntDesign.caretright,
                         size: 20,
                       ),
                       SizedBox(width: 20,),
                       Text('Denim and Pants',style: appstyle(15, Colors.black, FontWeight.w600),)
                     ],),
                   ),
                 ],
               ),



           ],),
      ),
    );
  }
}
