import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loginpage/clip.dart';
import 'package:loginpage/third_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class second_screen extends StatefulWidget {
  const second_screen({super.key});

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  int selectedindex = 0;
  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff2E47AE),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              "CROWDFUND,",
              style: TextStyle(color: Colors.white, fontSize: 25),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left)),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "PROJECTS",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Icon(Icons.menu)
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "PROJECT NAME",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 255),
            child: Text(
              "12 days ago",
              style: TextStyle(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 31),
            child: Text(
              " Amazon has earned a reputation as a dispruptor of",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: Text(
              "well estlablisheed industries through  technological",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: Text(
              " innovation and agressive reinvestiment technological\n into captiavcal experience",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: LinearPercentIndicator(
                width: 325.0,
                lineHeight: 8.0,
                percent: 0.8,
                backgroundColor: Colors.grey,
                progressColor: Color(0xff2E47AE)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "78%",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Funded",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "\$8,127",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "pledged",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "6",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Days",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/128/3177/3177440.png",
                height: 40,
                width: 40,
              ),
              Text(
                "Name Surname",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              RawMaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => third_screen()));
                },
                fillColor: Color(0xff2e47ae),
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 110,
            child: RawMaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              fillColor: Colors.white,
              child: Text(
                "i want to help",
                style: TextStyle(
                    color: Color(0xff2e47ae), fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ), // mainAxisAlignment: MainAxisAlignment.center,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 135),
                child: Icon(
                  Icons.circle,
                  size: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.circle,
                size: 12,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.circle,
                size: 12,
                color: Colors.white,
              )
            ],
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.white,
                size: 30,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size: 30,
              ),
              label: "",
              backgroundColor: Color(0xff2e47ae)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
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
