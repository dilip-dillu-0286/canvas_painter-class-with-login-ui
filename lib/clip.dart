import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/second_screen.dart';

class clip extends StatefulWidget {
  const clip({super.key});

  @override
  State<clip> createState() => _clipState();
}

class _clipState extends State<clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          CustomPaint(
            painter: CurvePainter(),
            child: Container(),
          ),
          SizedBox(
            height: 30,
          ),
          Image.network(
            'https://cdn-icons-png.flaticon.com/128/3767/3767319.png',
            height: 60,
            width: 80,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "CROWDFUND",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 55,
              width: 305,
              decoration: BoxDecoration(
                  color: Color(0xff537fe7),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: TextField(
                decoration: InputDecoration(
                    // fillColor: Color(0xff537fe7),
                    border: InputBorder.none,

                    //  OutlineInputBorder(

                    //   borderRadius: BorderRadius.circular(30),
                    // ),
                    label: Text(
                      "surname@gmail.com",
                      style: TextStyle(fontSize: 22),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Color(0xff537fe7),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Text(
            "Forgot password",
            style: TextStyle(color: Color(0xff2883DE), fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Divider(thickness: 2, color: Color(0xff2883DE)),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 120,
            child: RawMaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => second_screen()));
              },
              fillColor: (Color(0xff2883DE)),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/facebook.png",
                height: 50,
                width: 50,
                color: Color(0xff2E47AE),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "images/instagram.png",
                height: 50,
                width: 50,
                color: Color(0xff2E47AE),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "images/twitter.png",
                height: 50,
                width: 50,
                color: Color(0xff2E47AE),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.moveTo(size.width, -50);
    path.arcToPoint(Offset(size.width - 50, 0),
        radius: const Radius.circular(60.0), clockwise: true);
    path.lineTo(50, 0);
    path.arcToPoint(const Offset(0, 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.lineTo(0, 520);
    path.arcToPoint(const Offset(50, 480),
        radius: const Radius.circular(50.0), clockwise: true);
    path.lineTo(size.width - 50, 480);
    path.arcToPoint(Offset(size.width, 480 - 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.close();
    paint.color = Color(0xff2E47AE);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.moveTo(size.width, -50);
    path.arcToPoint(Offset(size.width - 50, 0),
        radius: const Radius.circular(60.0), clockwise: true);
    path.lineTo(50, 0);
    path.arcToPoint(const Offset(0, 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.lineTo(0, 520);
    path.arcToPoint(const Offset(50, 480),
        radius: const Radius.circular(50.0), clockwise: true);
    path.lineTo(size.width - 50, 480);
    path.arcToPoint(Offset(size.width, 480 - 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.close();
    paint.color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.moveTo(size.width, -50);
    path.arcToPoint(Offset(size.width - 50, 0),
        radius: const Radius.circular(60.0), clockwise: true);
    path.lineTo(50, 0);
    path.arcToPoint(const Offset(0, 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.lineTo(0, 520);
    path.arcToPoint(const Offset(50, 480),
        radius: const Radius.circular(50.0), clockwise: true);
    path.lineTo(size.width - 50, 480);
    path.arcToPoint(Offset(size.width, 480 - 50),
        radius: const Radius.circular(50.0), clockwise: false);
    path.close();
    paint.color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
