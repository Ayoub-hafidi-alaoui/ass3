import 'package:flutter/cupertino.dart';

class Contact extends StatelessWidget {
  String name;
  String phone;

  Contact(this.name, this.phone);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30, left: 10, right: 10),
      height: 100,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: $name"),
              Text("Phone: $phone")
            ],
          )
        ],
      ),
    );
  }

}