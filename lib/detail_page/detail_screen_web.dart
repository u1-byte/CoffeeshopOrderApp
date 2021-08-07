import 'package:coffeshop_app/model/drinks.dart';
import 'package:flutter/material.dart';

class DetailScreenWeb extends StatelessWidget {
  final Drinks drinkData;

  DetailScreenWeb({required this.drinkData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    drinkData.image,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          drinkData.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          drinkData.desc,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        isSizeNormal(),
                        SizedBox(height: 20.0),
                        Text(
                          'Brew',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        isBrewHot(),
                        SizedBox(height: 20.0),
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ChangeTotal(),
                        SizedBox(height: 80.0),
                        Center(
                          child: InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Item successfully added to cart.',
                                  ),
                                ),
                              );
                            },
                            child: Ink(
                              width: 300.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      drinkData.price,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class isSizeNormal extends StatefulWidget {
  @override
  _isSizeNormalState createState() => _isSizeNormalState();
}

class _isSizeNormalState extends State<isSizeNormal> {
  bool isNormal = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => setState(() => isNormal = true),
          child: Ink(
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: isNormal ? Colors.black : Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Normal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        InkWell(
          onTap: () => setState(() => isNormal = false),
          child: Ink(
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: isNormal ? Colors.grey : Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Large',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class isBrewHot extends StatefulWidget {
  @override
  _isBrewHotState createState() => _isBrewHotState();
}

class _isBrewHotState extends State<isBrewHot> {
  bool isHot = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => setState(() => isHot = true),
          child: Ink(
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: isHot ? Colors.black : Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Hot',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        InkWell(
          onTap: () => setState(() => isHot = false),
          child: Ink(
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: isHot ? Colors.grey : Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Cold',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChangeTotal extends StatefulWidget {
  @override
  _ChangeTotalState createState() => _ChangeTotalState();
}

class _ChangeTotalState extends State<ChangeTotal> {
  int totalOrder = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            if (totalOrder > 0) {
              setState(() {
                totalOrder -= 1;
              });
            }
          },
          child: Ink(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black,
            ),
            child: Icon(
              Icons.arrow_left_rounded,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Container(
          width: 20.0,
          child: Text(
            '$totalOrder',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 20.0),
        InkWell(
          onTap: () {
            setState(() {
              totalOrder += 1;
            });
          },
          child: Ink(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black,
            ),
            child: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
