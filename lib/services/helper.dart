import 'package:flutter/services.dart' as the_bundel;
import 'package:lumine_project/models/sneaker_model.dart';


class Helper{

    //Electronic
    Future<List<Sneakers>> getElectronicSneakers() async{
        final data = await the_bundel.rootBundle.loadString("images/json/Electronic.json");

        final electtronicList = sneakersFromJson(data);

        return electtronicList;

    }
    //Furniture
    Future<List<Sneakers>> getFurnitureSneakers() async{
        final data = await the_bundel.rootBundle.loadString("images/json/Furniture.json");

        final furnitureList = sneakersFromJson(data);

        return furnitureList;

    }
    //Kitchen
    Future<List<Sneakers>> getKitchenSneakers() async{
        final data = await the_bundel.rootBundle.loadString("images/json/Kitchen.json");

        final kitchenList = sneakersFromJson(data);

        return kitchenList;

    }


    //Single electronic
    Future<Sneakers> getElectronicSneakersById(String id) async{
        final data = await the_bundel.rootBundle.loadString("images/json/Electronic.json");

        final electtronicList = sneakersFromJson(data);

        final sneaker = electtronicList.firstWhere((sneaker) => sneaker.id == id);

        return sneaker;

    }

    //Single furniture
    Future<Sneakers> getFurnitureSneakersById(String id) async{
        final data = await the_bundel.rootBundle.loadString("images/json/Furniture.json");

        final furnitureList = sneakersFromJson(data);

        final sneaker = furnitureList.firstWhere((sneaker) => sneaker.id == id);

        return sneaker;

    }

    //Single kitchen
    Future<Sneakers> getKitchenSneakersById(String id) async{
        final data = await the_bundel.rootBundle.loadString("images/json/Kitchen.json");

        final kitchenList = sneakersFromJson(data);

        final sneaker = kitchenList.firstWhere((sneaker) => sneaker.id == id);

        return sneaker;

    }
}