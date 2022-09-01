import 'model/room.dart';
class Rooms {
  List<RoomModel> rooms= [
    RoomModel('King Room', 'images/KingRoom.jpg', 'A room with a king-sized bed'),
    RoomModel('Double Room', 'images/DoubleRoom.jpg', 'A room with two beds'),
    RoomModel('Family Room', 'images/FamilyRoom.jpg','A room assigned to three or four people'),
    RoomModel('Single Room', 'images/KingRoom.jpg', 'A room with a king-sized bed'),
    RoomModel('Queen Room', 'images/DoubleRoom.jpg', 'A room with a Queen bed'),
    RoomModel('Quad Room', 'images/FamilyRoom.jpg','A room assigned to four people'),
    RoomModel('third Room', 'images/KingRoom.jpg', 'A room with a  3 beds'),
    RoomModel('Sudio Room', 'images/DoubleRoom.jpg', 'A room with Sudio'),
    RoomModel('Twin Room', 'images/FamilyRoom.jpg','A room assigned to children'),
  ];
  RoomModel get_room (int ind){
    return rooms[ind];
  }
  int number_rooms (){
    return rooms.length;
  }
}