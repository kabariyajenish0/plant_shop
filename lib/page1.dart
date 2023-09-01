import 'package:flutter/material.dart';
import 'package:plant_shop/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/back.jpeg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                      height: 350,
                      width: 200,
                      //  color: Colors.redAccent,
                      child: Image(image: AssetImage("assets/image/main.png"))),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Find Your",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "DellaRespira-Regular",
                                  fontWeight: FontWeight.w700)),
                          Text("Favorite Plants",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "DellaRespira-Regular",
                                  fontWeight: FontWeight.w700)),
                          const Text("On our Shop",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "DellaRespira-Regular",
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Page2()));
                        },
                        child: Container(
                          height: 45,
                          width: 140,
                          child: Center(
                              child: Text(
                            "Start now ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "DellaRespira-Regular"),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff2A8C53),
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
    );
  }
}
