// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterp/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List items = [
    {
      "image":
          "https://m.media-amazon.com/images/I/71JPy7gSTyL._AC_SL1500_.jpg",
      "title": "Laptop",
      "subtitle": "Description of product",
      "price": "350\$",
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/616suF7t8aL._AC_SL1500_.jpg",
      "title": "Smart watch",
      "subtitle": "Description of product",
      "price": "250\$",
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/61jBnY6paeL._AC_SL1500_.jpg",
      "title": "Headset",
      "subtitle": "Description of product",
      "price": "70\$",
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/71+85WsJIhL._AC_SL1500_.jpg",
      "title": "Microphone",
      "subtitle": "Description of product",
      "price": "80\$",
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/71EYd9aIkGL._AC_SL1500_.jpg",
      "title": "Dell OptiPlex 3000",
      "subtitle": "Description of product",
      "price": "790\$",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Text(
            "Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Icon(
                      Icons.laptop,
                      size: 40,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Text(
                    "Laptop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[800]),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Icon(
                      Icons.phone_android_outlined,
                      size: 40,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Text(
                    "Mobile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[800]),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Icon(
                      Icons.electric_bike,
                      size: 40,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Text(
                    "Bikes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[800]),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Icon(
                      Icons.card_giftcard_sharp,
                      size: 40,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Text(
                    "Gifts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[800]),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Text(
            "Best Selling",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            height: 20,
          ),
          GridView.builder(
            itemCount: items.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 250),
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Itemetails(data: items[i])));
                },
                child: Card(
                  surfaceTintColor: Colors.white,
                  shadowColor: Colors.grey[800],
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 170,
                          padding: EdgeInsets.all(20),
                          child: Image.network(
                            items[i]["image"],
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          items[i]["title"],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 3,
                        ),
                        Text(
                          items[i]["subtitle"],
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Container(
                          height: 8,
                        ),
                        Text(
                          items[i]["price"],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[600]),
                        )
                      ]),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
