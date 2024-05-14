
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumine_project/Views/shared/Add_play.dart';
import 'package:lumine_project/Views/shared/products.dart';
import 'package:lumine_project/models/sneaker_model.dart';
import 'package:lumine_project/services/helper.dart';

class ProductByCat extends StatefulWidget {
  const ProductByCat({super.key, });


  @override
  State<ProductByCat> createState() => _ProductByCatState();
}

class _ProductByCatState extends State<ProductByCat> with TickerProviderStateMixin {
  late final TabController _tabController =
  TabController(length: 1, vsync: this);

  late Future<List<Sneakers>> _Product;

  void getelectronic() {
    _Product = Helper().getElectronicSneakers();
  }


  @override
  void initState() {
    super.initState();
    getelectronic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
              height: MediaQuery.of(context).size.height*1.5,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(6, 12, 16, 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                               SizedBox(
                                height: 60,
                                child: Image.asset('images/image/Logo.jpg'),
                              ),

                            SizedBox(
                              width: 230,
                            ),
                           Icon(Icons.search_outlined,size: 20,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 170,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(0),
                        itemCount: demoadd_play.length,
                        itemBuilder: (context, index) {
                          return addplay(demoadd_play[index]);
                        }),
                  ),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:300,
              left: 16,right: 12),
              child: ClipRect(
                child: TabBarView(controller: _tabController ,children:[
                Product(Product: _Product),

                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Future<dynamic>filter(){
    double _value = 100;
    return showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.white54,
        builder: (context) => Container(
            height:MediaQuery.of(context).size.height*0.82,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                topLeft: Radius.circular(25)
            ),
          ),
          child: Column(
            children: [
                 SizedBox(
                   height: 10,
                 ),
              Container(
                height: 5,
                width: 40,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black38,
                ) ,
              ),
                    
                  ],
                ),
        )
              );


  }
}

Padding addplay(add_play Add_play) {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        height: 100,
        width: 295,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 162,
                width: 295,
                child: Image.asset(Add_play.image,fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
