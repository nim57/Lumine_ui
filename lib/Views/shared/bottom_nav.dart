
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lumine_project/Controllers/mainscreen_provider.dart';
import 'package:lumine_project/Views/shared/botom_nav_widget.dart';
import 'package:provider/provider.dart';

class BottoNavBar extends StatelessWidget {
  const BottoNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNoTifier>(
        builder: (context,mainScreenNoTifier,child){
           return SafeArea(
             child: Padding(
               padding: const EdgeInsets.all(2),
               child: Container(
                 padding: const EdgeInsets.all(12),
                 margin: const EdgeInsets.symmetric(horizontal: 10),
                 decoration: const BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.all(Radius.circular(16)),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     BotomNavWidget(
                       onTop: () {
                         mainScreenNoTifier.pageIndex = 0;
                       },
                       icon: mainScreenNoTifier.pageIndex == 0
                           ? MaterialCommunityIcons.home
                           : MaterialCommunityIcons.home_outline,
                     ),
                     BotomNavWidget(
                         onTop: () {
                           mainScreenNoTifier.pageIndex = 1;
                         },
                         icon: mainScreenNoTifier.pageIndex == 1 ?
                         Icons.category
                             : Icons.category_outlined
                     ),
                     BotomNavWidget(
                         onTop: () {
                           mainScreenNoTifier.pageIndex = 2;
                         }, icon: mainScreenNoTifier.pageIndex == 2 ?
                     Icons.shopping_cart
                         : Icons.shopping_cart_outlined
                     ),
                     BotomNavWidget(
                       onTop: () {
                         mainScreenNoTifier.pageIndex = 3;
                       }, icon: mainScreenNoTifier.pageIndex == 3 ?
                     Icons.account_circle
                         : Icons.account_circle_outlined,
                     ),
                   ],
                 ),
               ),),);;
        },
    );}
}