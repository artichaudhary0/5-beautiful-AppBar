import 'package:flutter/material.dart';

class AppBar5 extends StatelessWidget {
  const AppBar5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          "AppBar 4",
          style: TextStyle(
              fontFamily: "Mansalva",
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(2000.0),
            bottomRight: Radius.circular(2000.0),
          ),
          side: BorderSide(
              width: 3.0, color: Colors.pinkAccent, style: BorderStyle.none),
        ),
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(2000.0),
            bottomRight: Radius.circular(2000.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xff083Ef6),
                  Color(0xff008DFF),
                  Colors.deepPurpleAccent,
                  Colors.lightBlueAccent,
                  Colors.deepPurple,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
        actions: [
          CircleAvatar(
              radius: 17,
              backgroundColor: Colors.pink,
              child: Image.network(
                  "https://cdn0.iconfinder.com/data/icons/people-are-people/512/people-13-512.png")),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        fontFamily: "Mansalva",
                        color: Colors.white),
                  ),
                  Text(""),
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.black, items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            label: "fav"),
      ]),
    );
  }
}
