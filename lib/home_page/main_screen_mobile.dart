import 'package:coffeshop_app/detail_page/detail_screen.dart';
import 'package:coffeshop_app/model/drinks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreenMobile extends StatelessWidget {
  final String name;

  MainScreenMobile({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 550.0,
      ),
      child: ListView.builder(
        padding: EdgeInsets.all(0.0),
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          final drink = drinks[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Card(
              color: Colors.white,
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(drink.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(drinkData: drinks[index]);
                          }));
                        },
                        child: Ink(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
