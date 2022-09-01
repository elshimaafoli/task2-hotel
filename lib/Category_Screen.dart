import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/roomController.dart';
import 'DetailScreen.dart';
import 'model/room.dart';
class Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, ind) {
          RoomModel room = Rooms().get_room(ind);
          return buildItem(room, context);
        },
        itemCount: Rooms().number_rooms(),
        shrinkWrap: true,
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
Widget buildItem(room, context) {
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, DetailRoomScreen.room,
      arguments: room);
    },
    child: Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Image(
          image: AssetImage(room.img),
          height: 100,
          width: 80,
        ),
        title: Text(
          room.name,
          style: TextStyle(
            fontSize: 18,
            color: Colors.brown[400],
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing:  Icon(Icons.keyboard_arrow_right_outlined),
        subtitle: Text(
          room.description,
          maxLines: 2,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[500],
          ),
        ),
      ),
      elevation: 5,
    ),
  );
}