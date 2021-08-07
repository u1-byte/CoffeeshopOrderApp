class Drinks {
  String name;
  String price;
  String image;
  String desc;

  Drinks({
    required this.name,
    required this.price,
    required this.image,
    required this.desc,
  });
}

var coffeeDrinks = [
  Drinks(
    name: 'Espresso',
    price: 'Rp. 10.000',
    image: 'images/espresso.jpg',
    desc:
        'The espresso, also known as a short black, is approximately 1 oz. of highly concentrated coffee. Although simple in appearance, it can be difficult to master.',
  ),
  Drinks(
    name: 'Long Black',
    price: 'Rp. 12.000',
    image: 'images/long_black.jpg',
    desc:
        'The long black is a similar coffee drink to the americano, but it originated in New Zealand and Australia. It generally has more crema than an americano.',
  ),
  Drinks(
    name: 'Affogato',
    price: 'Rp. 16.000',
    image: 'images/affogato.jpeg',
    desc:
        'Affogatos are more for a dessert coffee than a drink you would find at a cafe, but they can add a fun twist to your menu. They are made by pouring a shot of espresso over a scoop of vanilla ice cream to create a sweet after-meal treat.',
  ),
  Drinks(
    name: 'Cappucino',
    price: 'Rp. 16.000',
    image: 'images/cappucino.jpg',
    desc:
        'This creamy coffee drink is usually consumed at breakfast time in Italy and is loved in the United States as well. It is usually associated with indulgence and comfort because of its thick foam layer and additional flavorings that can be added to it.',
  ),
  Drinks(
    name: 'Mochaccino',
    price: 'Rp. 15.000',
    image: 'images/mochacino.jpg',
    desc:
        'The mocha is considered a coffee and hot chocolate hybrid. The chocolate powder or syrup gives it a rich and creamy flavor and cuts the acidity of the espresso.',
  ),
];

var nonCoffeeDrinks = [
  Drinks(
    name: 'Red Velvet',
    price: 'Rp. 14.000',
    image: 'images/red_velvet.jpg',
    desc:
        'Our favorite red velvet drink with cream cheese notes.',
  ),
  Drinks(
    name: 'Taro',
    price: 'Rp. 14.000',
    image: 'images/taro.jpg',
    desc:
        'Combination of purple sweet potato and creamy milk.',
  ),
  Drinks(
    name: 'Matcha',
    price: 'Rp. 16.000',
    image: 'images/matcha.jpg',
    desc:
        'Creamy and leafy, the best twist of Japanese classic drink.',
  ),
];
