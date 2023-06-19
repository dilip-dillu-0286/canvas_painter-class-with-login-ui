import 'package:flutter/material.dart';
import 'package:loginpage/clip.dart';
import 'package:loginpage/second_screen.dart';

class third_screen extends StatefulWidget {
  @override
  State<third_screen> createState() => _third_screenState();
}

class _third_screenState extends State<third_screen> {
  int selectedindex = 0;
  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E47AE),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "CROWDFUND",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CustomPaint(
            painter: CurvePainter1(),
            child: Container(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => second_screen()));
                    },
                    child: Icon(Icons.chevron_left)),
              ),
              // SizedBox(
              //   width: 5,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  "DONATE ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Icon(Icons.menu)
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "YOUR DONATION",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: RawMaterialButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
              fillColor: Colors.grey.shade200,
              child: Text(
                "\$20.00",
                style: TextStyle(
                    color: Color(0xff2E47AE),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Pay",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                  height: 92,
                  width: 92,
                  child: Card(
                    shadowColor: Colors.grey,
                    borderOnForeground: true,
                    elevation: 3,
                    child: Center(
                        child: Text(
                      "credit\ncard",
                      style: TextStyle(color: Colors.grey),
                    )),
                  ),
                ),
                Container(
                  height: 92,
                  width: 92,
                  child: Card(
                    shadowColor: Colors.grey,
                    borderOnForeground: true,
                    elevation: 3,
                    child: Center(
                        child: Text(
                      "Bank\ntransfer",
                      style: TextStyle(color: Colors.grey),
                    )),
                  ),
                ),
                Container(
                  height: 92,
                  width: 92,
                  child: Card(
                    shadowColor: Colors.grey,
                    borderOnForeground: true,
                    elevation: 3,
                    child: Center(
                        child: Text(
                      ". . .",
                      style: TextStyle(color: Colors.grey),
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          RawMaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            fillColor: Colors.blue,
            child: Text(
              "Donate",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.white,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae))
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff2e47ae),
        currentIndex: selectedindex,
        selectedItemColor: Color(0xff00c6e0),
        iconSize: 40,
        onTap: onitemtapped,
        elevation: 6,
      ),
    );
  }
}
