class Coffee {
  final String coffeeName;
  final String typeOfCoffee;
  final String price;
  final double rating;
  final String imagePath;

  const Coffee({
    required this.coffeeName, 
    required this.typeOfCoffee, 
    required this.price, 
    required this.imagePath, 
    required this.rating
  });
}

final List<Coffee> allCoffeeItems = [
  const Coffee(coffeeName: 'Caffe Mocha', typeOfCoffee: 'Deep Foam', price: r'$ 4.53', rating: 4.8, imagePath: 'assets/images/1.png'),
  const Coffee(coffeeName: 'Flat White', typeOfCoffee: 'Espresso', price: r'$ 3.53', rating: 4.9, imagePath: 'assets/images/2.png'),
  const Coffee(coffeeName: 'Cappuccino', typeOfCoffee: 'Milk Foam', price: r'$ 4.99', rating: 4.7, imagePath: 'assets/images/3.png'),
  const Coffee(coffeeName: 'Americano', typeOfCoffee: 'Frape Example', price: r'$ 2.10', rating: 4.2, imagePath: 'assets/images/4.png'),
];
final List<Coffee> machiatoItems = [
  const Coffee(coffeeName: 'Machiato Mint', typeOfCoffee: 'Refreshing', price: r'$ 4.20', rating: 4.7, imagePath: 'assets/images/1.png'),
  const Coffee(coffeeName: 'Machiato Hazel', typeOfCoffee: 'Nutty', price: r'$ 4.80', rating: 4.9, imagePath: 'assets/images/2.png'),
  const Coffee(coffeeName: 'Machiato Caramel', typeOfCoffee: 'Sweet', price: r'$ 5.10', rating: 4.5, imagePath: 'assets/images/3.png'),
  const Coffee(coffeeName: 'Machiato Caramel', typeOfCoffee: 'Sweet', price: r'$ 5.10', rating: 4.5, imagePath: 'assets/images/3.png'),
];
final List<Coffee> latteItems = [
  const Coffee(coffeeName: 'Latte Vanilla', typeOfCoffee: 'Smooth', price: r'$ 3.99', rating: 4.6, imagePath: 'assets/images/4.png'),
  const Coffee(coffeeName: 'Latte Pumpkin', typeOfCoffee: 'Spiced', price: r'$ 5.50', rating: 4.8, imagePath: 'assets/images/5.png'),
  const Coffee(coffeeName: 'Latte Pumpkin', typeOfCoffee: 'Spiced', price: r'$ 5.50', rating: 4.8, imagePath: 'assets/images/5.png'),
  const Coffee(coffeeName: 'Latte Pumpkin', typeOfCoffee: 'Spiced', price: r'$ 5.50', rating: 4.8, imagePath: 'assets/images/5.png'),
];
final List<Coffee> americanoItems = [
  const Coffee(coffeeName: 'Americano Hot', typeOfCoffee: 'Strong', price: r'$ 2.50', rating: 4.7, imagePath: 'assets/images/6.png'),
  const Coffee(coffeeName: 'Americano Iced', typeOfCoffee: 'Cooling', price: r'$ 2.80', rating: 4.8, imagePath: 'assets/images/1.png'),
  const Coffee(coffeeName: 'Americano Decaf', typeOfCoffee: 'No Buzz', price: r'$ 2.00', rating: 4.5, imagePath: 'assets/images/2.png'),
  const Coffee(coffeeName: 'Americano Decaf', typeOfCoffee: 'No Buzz', price: r'$ 2.00', rating: 4.5, imagePath: 'assets/images/2.png'),

];
final List<Coffee> coldItems = [
  const Coffee(coffeeName: 'Frappuccino', typeOfCoffee: 'Blended Ice', price: r'$ 6.00', rating: 4.9, imagePath: 'assets/images/3.png'),
  const Coffee(coffeeName: 'Cold Espresso', typeOfCoffee: 'Double Shot', price: r'$ 3.50', rating: 4.7, imagePath: 'assets/images/4.png'),
  const Coffee(coffeeName: 'Cold Espresso', typeOfCoffee: 'Double Shot', price: r'$ 3.50', rating: 4.7, imagePath: 'assets/images/4.png'),
  const Coffee(coffeeName: 'Cold Espresso', typeOfCoffee: 'Double Shot', price: r'$ 3.50', rating: 4.7, imagePath: 'assets/images/4.png'),
];
