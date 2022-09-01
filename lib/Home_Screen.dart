import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Welcome.jpg'),
            fit: BoxFit.fill,
            opacity: 0.5,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.brown[600],
                  shadowColor: Colors.white,
                  padding: EdgeInsets.all(12.0),
                  elevation: 10,
                ),
                onPressed: (){
                  Navigator.pushNamed(context, 'category');
                },
                child:const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Welcome',
                  style:TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
