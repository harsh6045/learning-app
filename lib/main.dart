import 'package:flutter/material.dart';

import 'WishListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    if (index == 1) {
      // If Wishlist icon is selected (index 1), navigate to WishlistScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WishlistScreen()),
      );
    } else {
      // For other icons, update the selectedIndex
      setState(() {
        _selectedIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage("assets/Menu.png"),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Spacer(),
                          Image(
                            image: AssetImage("assets/message.png"),
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10,),
                          Image(
                            image: AssetImage("assets/Notification.png"),
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hello, Priya!",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What do you want to learn today?",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Use spaceEvenly for equal spacing
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue), // Set the border color to blue
                                borderRadius: BorderRadius.circular(8), // Optional: Add border radius for rounded corners
                              ),
                              child: ListTile(
                                leading: Image(image: AssetImage("assets/icons/Book-mark.png")),
                                title: Text(
                                  "Program",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue), // Set the border color to blue
                                borderRadius: BorderRadius.circular(8), // Optional: Add border radius for rounded corners
                              ),
                              child: ListTile(
                                leading: Image(image: AssetImage("assets/icons/help-circle.png")),
                                title: Text(
                                  "Get help",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Use spaceEvenly for equal spacing
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue), // Set the border color to blue
                                borderRadius: BorderRadius.circular(8), // Optional: Add border radius for rounded corners
                              ),
                              child: ListTile(
                                leading: Image(image: AssetImage("assets/icons/Book-open.png")),
                                title: Text(
                                  "Learn",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                         /* Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue,),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image: AssetImage("assets/icons/DD Tracker.png")),
                                    SizedBox(width: 8),
                                    Text("DD Tracker",style: TextStyle(color: Colors.blue),)
                                  ],
                                ),
                              ),
                            ),
                          ),*/
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue), // Set the border color to blue
                                borderRadius: BorderRadius.circular(8), // Optional: Add border radius for rounded corners
                              ),
                              child: ListTile(
                                leading: Image(image: AssetImage("assets/icons/DD Tracker.png")),
                                title: Text(
                                  "DD Tracker",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Programs for you!",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "View all ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/Frame 122.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LIFESTYLE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A complete guide for your \nnewborn baby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "16 lessons",
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/Frame 122.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LIFESTYLE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A complete guide for your \nnewborn baby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "16 lessons",
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/Frame 122.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LIFESTYLE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A complete guide for your \nnewborn baby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "16 lessons",
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Events and experience",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "View all ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "BABYCARE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Understanding of human \nbehaviour",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "13 Feb, Sunday",
                                            style: TextStyle(color: Colors.black26),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "BABYCARE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Understanding of human \nbehaviour",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "13 Feb, Sunday",
                                            style: TextStyle(color: Colors.black26),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LIFESTYLE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A complete guide for your \nnewborn baby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "16 lessons",
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Lessons for you ",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "View all ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "BABYCARE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Understanding of human \nbehaviour",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "3 min",
                                            style: TextStyle(color: Colors.black26),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "BABYCARE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Understanding of human \nbehaviour",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "3 min",
                                            style: TextStyle(color: Colors.black26),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shadowColor: Colors.blueGrey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/young.png",),
                                      width: MediaQuery.of(context).size.width/1.4,
                                      fit: BoxFit.cover, // Set the fit property to cover the card's width
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LIFESTYLE",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A complete guide for your \nnewborn baby",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "16 lessons",
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white24
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Wishlist',
                backgroundColor: Colors.white24
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Order',
                backgroundColor: Colors.white24
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.white24
            ),
            BottomNavigationBarItem(
              icon: ClipOval(
                child: Image.asset(
                  "assets/young.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.deepPurple,
          currentIndex: _selectedIndex, // Set the current selected index
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}


