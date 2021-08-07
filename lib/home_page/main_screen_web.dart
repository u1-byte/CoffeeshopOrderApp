import 'package:coffeshop_app/detail_page/detail_screen.dart';
import 'package:coffeshop_app/model/drinks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreenWeb extends StatelessWidget {
  final String name;

  MainScreenWeb({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello, $name!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Find your favorite drinks.',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30.0),
              isCoffee(),
            ],
          ),
        ),
      ),
    );
  }
}

class isCoffee extends StatefulWidget {
  isCoffee({Key? key}) : super(key: key);

  @override
  _isCoffeeState createState() => _isCoffeeState();
}

class _isCoffeeState extends State<isCoffee> {
  bool isCoffeeSelected = true;
  final coffee = coffeeDrinks;
  final nonCoffee = nonCoffeeDrinks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => setState(() => isCoffeeSelected = true),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: isCoffeeSelected ? Colors.black : Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Coffee',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            InkWell(
              onTap: () => setState(() => isCoffeeSelected = false),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: isCoffeeSelected ? Colors.grey : Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Non Coffee',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.0),
        DrinksItem(drinks: isCoffeeSelected ? coffee : nonCoffee),
      ],
    );
  }
}

class DrinksItem extends StatelessWidget {
  final List<Drinks> drinks;

  DrinksItem({required this.drinks});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.all(0.0),
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: drinks.map((drink) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(drinkData: drink);
            }));
          },
          child: Card(
            color: Colors.white,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(drink.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    drink.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    drink.price,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
