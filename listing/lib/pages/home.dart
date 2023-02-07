import 'package:flutter/material.dart';
import 'package:listing/components/usercard.dart';
import 'package:listing/model/user_model.dart';
import 'package:listing/services/api_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<UserModel> data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService()
        .fetchApi("https://jsonplaceholder.typicode.com/photos")
        .then((res) => {
              setState(() {
                data = res;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[200],
          title: const Text(
            "List of Users",
            style: TextStyle(color: Colors.black38),
          ),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, index) {
              return Usercard(data: data, index: index);
            }));
  }
}
