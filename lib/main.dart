import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My AppBar"),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            titleSpacing: 50,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.pink],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            elevation: 30,
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: "Feed",
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: "Profile",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              buildPage("Home Page"),
              buildPage("Feed Page"),
              buildPage("Profile Page"),
              buildPage("Settings Page"),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.purple,
            items: [
              BottomNavigationBarItem(
                label: "Account",
                icon: Icon(Icons.account_circle_outlined,
                    color: Colors.white, size: 30),
              ),
              BottomNavigationBarItem(
                  label: "Set Time",
                  icon: Icon(Icons.access_time, color: Colors.white, size: 30)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 30.0),
        ),
      );
}
