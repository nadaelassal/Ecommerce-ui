import 'package:flutter/material.dart';

class Itemetails extends StatefulWidget {
  final data;
  const Itemetails({super.key, this.data});

  @override
  State<Itemetails> createState() => _ItemetailsState();
}

class _ItemetailsState extends State<Itemetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            const Text(
              "Online ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Shopping ",
              style: TextStyle(color: Colors.amber[800]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.amber[800],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ""),
          ]),
      body: ListView(children: [
        Image.network(widget.data["image"]),
        Container(
            child: Text(
          widget.data["title"],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        )),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              widget.data["subtitle"],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amber[800],
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Colors : ",
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(width: 20),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.orange),
              ),
            ),
            const Text("  Grey  "),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const Text("  Black  ")
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.black,
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Add to card"),
          ),
        )
      ]),
    );
  }
}
