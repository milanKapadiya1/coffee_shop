import 'package:coffeeshop/widgets/cards.dart';
import 'package:coffeeshop/widgets/coffee_details_model.dart';
import 'package:flutter/material.dart';

class CoffeeGrid extends StatelessWidget {
  final List<Coffee> items;
  final double horizontalPadding;
  
  const CoffeeGrid({
    super.key, 
    required this.items, 
    required this.horizontalPadding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: GridView.builder( 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0, 
          mainAxisSpacing: 24.0, 
          childAspectRatio: 0.68, 
        ),
        itemCount: items.length,
        padding: const EdgeInsets.only(bottom: 24.0), 
        itemBuilder: (context, index) {
          final item = items[index];
          return CustomCards(
            coffeeTitle: item.coffeeName,
            typeOfCoffee: item.typeOfCoffee,
            price: item.price,
            rating: item.rating,
            myImage: item.imagePath,
          );
        },
      ),
    );
  }
}
