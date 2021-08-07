import 'package:coffeshop_app/home_page/main_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreenWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/coffeeshop.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
                          child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Welcome to Senja Coffee Shop.',
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 120.0),
                    Text(
                      'Let us know your name.',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 8.0),
                    NameInput(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameInput extends StatefulWidget {
  NameInput({Key? key}) : super(key: key);

  @override
  _NameInputState createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 400,
          child: TextField(
            textAlign: TextAlign.center,
            controller: textController,
            maxLines: 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter your name',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            style: TextStyle(fontSize: 14.0),
          ),
        ),
        SizedBox(height: 20.0),
        Material(
          elevation: 2.0,
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.grey,
          child: InkWell(
            onTap: () {
              var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      MainScreen(name: textController.text));
              Navigator.of(context).push(route);
            },
            child: Ink(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Enter',
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
        )
      ],
    );
  }
}
