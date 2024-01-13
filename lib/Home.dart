import 'package:flutter/material.dart';

import 'Data/Data of json.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future get() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              List l = [
                {
                  "id": 1,
                  "name": "Alice Smith",
                  "contact": "9876543210",
                  "username": "alice123",
                  "password": "password123",
                  "city": "New York",
                  "image": "assets/images/alice.jpg"
                },
                {
                  "id": 2,
                  "name": "Bob Johnson",
                  "contact": "1234567890",
                  "username": "bob456",
                  "password": "secretpassword",
                  "city": "London",
                  "image": "assets/images/bob.png"
                },
                {
                  "id": 3,
                  "name": "Charlie Brown",
                  "contact": "5551234567",
                  "username": "charlie789",
                  "password": "browndog123",
                  "city": "Paris",
                  "image": "assets/images/charlie.jpeg"
                },
                {
                  "id": 4,
                  "name": "David Miller",
                  "contact": "8889990000",
                  "username": "davidmiller",
                  "password": "password1234",
                  "city": "Tokyo",
                  "image": "assets/images/david.jpg"
                },
                {
                  "id": 5,
                  "name": "Emily Davis",
                  "contact": "2223334444",
                  "username": "emilydavis",
                  "password": "emily1234",
                  "city": "Sydney",
                  "image": "assets/images/emily.png"
                },
                {
                  "id": 6,
                  "name": "Frank Jackson",
                  "contact": "7778889999",
                  "username": "frankjackson",
                  "password": "password456",
                  "city": "Berlin",
                  "image": "assets/images/frank.jpeg"
                },
                {
                  "id": 7,
                  "name": "Grace Lee",
                  "contact": "3334445555",
                  "username": "gracelee",
                  "password": "grace123",
                  "city": "Rome",
                  "image": "assets/images/grace.jpg"
                },
                {
                  "id": 8,
                  "name": "Harry Williams",
                  "contact": "6667778888",
                  "username": "harrywilliams",
                  "password": "harry1234",
                  "city": "Madrid",
                  "image": "assets/images/harry.png"
                },
                {
                  "id": 9,
                  "name": "Isabella Garcia",
                  "contact": "1112223333",
                  "username": "isabellagarcia",
                  "password": "password12345",
                  "city": "Barcelona",
                  "image": "assets/images/isabella.jpeg"
                },
                {
                  "id": 10,
                  "name": "Jack Thompson",
                  "contact": "4445556666",
                  "username": "jackthompson",
                  "password": "jack12345",
                  "city": "Los Angeles",
                  "image": "assets/images/jack.jpg"
                }
              ];
              return ListView.builder(
                itemBuilder: (context, index) {
                  Data d = Data.get(l[index]);
                  return Card(
                    child: ListTile(
                      leading: Center(child: Text("${d.id}"),),
                      title: Text("${d.name}"),
                      subtitle: Text("${d.contact}"),
                      trailing: Text("${d.city}"),
                    ),
                  );
                },
              );
            } else
              return Center(
                child: Text(
                  "No data found...",
                  style: TextStyle(fontSize: 48),
                ),
              );
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}
