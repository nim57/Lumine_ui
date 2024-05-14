
import 'package:flutter/material.dart';
import 'package:lumine_project/Views/shared/appstyle.dart';

class StaggerTile extends StatefulWidget {
  const StaggerTile({super.key, required this.image, required this.name, required this.price});

  final String image;
  final String name;
  final String price;

  @override
  State<StaggerTile> createState() => _StaggerTileState();
}

class _StaggerTileState extends State<StaggerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16),),
      ),
      child:
      Padding(padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.image, fit: BoxFit.fill),
          Container(
            padding:const EdgeInsets.only(top: 12),
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name,style: appstyle1(13, Colors.black, FontWeight.w700,1),),
                SizedBox(height:10,),
                Text(widget.price,style: appstyle1(11, Colors.black, FontWeight.w500,1),),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
