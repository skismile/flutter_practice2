import 'package:flutter/material.dart';
import 'package:listing/model/user_model.dart';

class Usercard extends StatelessWidget {
  List<UserModel> data;
  int index;
  Usercard({required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 15),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 90,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LeftBox(data[index]),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: MiddleBox(data[index])),
            RightBox()
          ],
        ),
      ),
    );
    ;
  }
}

Widget LeftBox(data) {
  return Container(
    width: 70,
    child: Column(
      children: [
        Container(
            height: 60,
            width: double.infinity,
            // color: Colors.grey,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.grey[200]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  " ${data.albumId}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "AlbumId",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: Colors.red[900]),
          child: Text(
            "id : ${data.id}",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ],
    ),
  );
}

Widget MiddleBox(data) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${data.title}",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${data.thumbnailUrl}",
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
              fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${data.url}",
          style: TextStyle(
              fontSize: 10,
              color: Colors.teal[900],
              fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
CircleAvatar RightBox() {
  return const CircleAvatar(
    radius: 25, // Image radius
    backgroundImage:
        NetworkImage('https://avatars.githubusercontent.com/u/101392872?v=4'),
  );
}
