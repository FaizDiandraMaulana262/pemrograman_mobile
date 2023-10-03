import 'package:flutter/material.dart';
import 'package:project/reservation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booklet Online',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Booklet Online'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(verticalDirection: VerticalDirection.down, children: [
          Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                verticalDirection: VerticalDirection.up,
                children: [
                  Text(
                    "Hello, BosToken",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    " ",
                    style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
                  )
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                "Let's reserve a table for you",
                style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
              ),
              Text(
                " ",
                style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30), child: searchBar()),
          Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                verticalDirection: VerticalDirection.up,
                children: [
                  cardCategory(
                    text: "All",
                    icon: Icons.food_bank_outlined,
                  ),
                  cardCategory(
                    text: "Pizza",
                    icon: Icons.local_pizza_outlined,
                  ),
                  cardCategory(
                    text: "Japanese",
                    icon: Icons.rice_bowl,
                  ),
                  cardCategory(
                    text: "Fruit",
                    icon: Icons.apple_outlined,
                  )
                ],
              )),
          Padding(padding: EdgeInsets.only(top: 30), child: cardPromotion())
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            label: 'Cafes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Reserved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined),
            label: 'Saved',
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search cafes",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class cardCategory extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onPressed;

  const cardCategory({
    Key? key,
    required this.text,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 70,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade800,
            width: 0.2,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                icon,
                size: 30,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class cardPromotion extends StatelessWidget {
  const cardPromotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ReservationClass(),
          ),
        );
      },
      child: Container(
        width: 350,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage("assets/image/image.jpg"),
                  width: 300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 25),
              child: Row(
                children: [
                  Text(
                    "Restaurant Daging Manusia",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 20),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    " JL. Pabrik Nuklir No 6",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
