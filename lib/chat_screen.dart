import 'package:ass4/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  List<Contact> contacts = [];

  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  String name = "";
  String phone = "";
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center, child: Text("Contacts Screen")),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  labelText: "Enter your name here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: phoneController,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.add_call,
                    color: Colors.blue,
                  ),
                  labelText: "Enter your phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.all(30),
                    child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(),
                      onPressed: () {
                        name = nameController.text;
                        phone = phoneController.text;
                        contacts.add(Contact(name, phone));
                        setState(() {});
                      },
                      child: Text("Add"),
                    ))),
                Container(
                    padding: EdgeInsets.all(30),
                    child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                      onPressed: () {
                        contacts.remove(contacts[contacts.length - 1]);
                        setState(() {

                        });},
                      child: Text("Delete"),
                    ))),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (_, index) => contacts[index],
              itemCount: contacts.length,
            ))
          ],
        ),
      ),
    );
  }
}
