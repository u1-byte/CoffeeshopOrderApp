import 'package:coffeshop_app/home_page/main_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreenMobile extends StatelessWidget {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Senja Coffee Shop.',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
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
    return Row(
      children: [
        Expanded(
          child: TextField(
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
        SizedBox(width: 8.0),
        InkWell(
          onTap: () {
            var route = MaterialPageRoute(
                builder: (BuildContext context) =>
                    MainScreen(name: textController.text));
            Navigator.of(context).push(route);
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 30.0,
          ),
        )
      ],
    );
  }
}
