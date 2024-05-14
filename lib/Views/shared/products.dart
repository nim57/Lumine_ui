
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lumine_project/Views/shared/staggered_til.dart';
import 'package:lumine_project/models/sneaker_model.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required Future<List<Sneakers>> Product,
  }) : _Product = Product;

  final Future<List<Sneakers>> _Product;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Sneakers>>(
        future: _Product,
        builder: (context, snapshot) {
          if (snapshot
              .connectionState ==
              ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot
              .hasError) {
            return Text(
                'Error ${snapshot.error}');
          } else {
            final electronic = snapshot.data;
            return StaggeredGridView.countBuilder(
                padding :EdgeInsets.zero,
                crossAxisCount : 2,
                crossAxisSpacing: 20,
                mainAxisSpacing:16,
                itemCount:
                electronic!.length,
                scrollDirection:
                Axis.vertical,
                staggeredTileBuilder: (index) => StaggeredTile.extent(
                    (index % 2 == 0 )? 1:1, (index % 4 ==1 || index % 4 == 3)
                    ?MediaQuery.of(context).size.height*0.4
                    : MediaQuery.of(context).size.height*0.38),
                itemBuilder:
                    (context, index) {
                  final item = snapshot.data![index];
                  return StaggerTile
                    (image: item.image,
                      name: item.name,
                      price:item.newPrice);
                });
          }
        });
  }
}
