import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/room.dart';

class DetailRoomScreen extends StatelessWidget {
  @override
  static const room = 'argument';
  Widget build(BuildContext context) {
    final selectedroom =
        ModalRoute.of(context)!.settings.arguments as RoomModel;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('Details of ${selectedroom.name}'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(selectedroom.img),
                maxRadius: 100,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  selectedroom.description,
                  maxLines: 2,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
