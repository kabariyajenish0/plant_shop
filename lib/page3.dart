import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key, this.image, this.text, this.name1, this.prise})
      : super(key: key);
  final image;
  final text;
  final name1;
  final prise;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Map<String, dynamic>> uilist = [
    {'icon': "assets/image/Days.png", 'name3': "20", 'name4': "Days"},
    {'icon': "assets/image/height.png", 'name3': "4.5\"", 'name4': "Height"},
    {'icon': "assets/image/humidity.png", 'name3': "85%", 'name4': "Humidiry"},
    {
      'icon': "assets/image/diameter.png",
      'name3': "4.5\"",
      'name4': "Diameter"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3CF91),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                ))
          ]),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 530,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 25,
                                child: Center(
                                  child: Text("Indoor",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "DellaRespira-Regular",
                                          fontSize: 10)),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Text(widget.text,
                                  style: TextStyle(
                                      fontFamily: "DellaRespira-Regular",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                              Text(widget.name1,
                                  style: TextStyle(
                                      fontFamily: "DellaRespira-Regular",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2A8C53),
                                      fontSize: 25)),
                              SizedBox(
                                height: 20,
                              ),
                              Text(widget.prise,
                                  style: TextStyle(
                                      fontFamily: "DellaRespira-Regular",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2A8C53),
                                      fontSize: 25)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 40, top: 20, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                4,
                                (index) => Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF3CF91),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                      child: Center(
                                          child: Image.asset(
                                        uilist[index]["icon"],
                                        height: 18,
                                        width: 18,
                                      )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          uilist[index]["name3"],
                                          style: TextStyle(
                                              fontFamily:
                                                  "DellaRespira-Regular",
                                              color: Color(0xff2A8C53),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          uilist[index]["name4"],
                                          style: TextStyle(
                                            fontFamily: "DellaRespira-Regular",
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                      color: Color(0xffEAF0EC),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "DellaRespira-Regular",
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "\"Artificial aloe Plant\" is most in demand, because of it's\n"
                              "simple shape. This plant can also survive outdoor. The\n"
                              "\"Artificial aloe Plant\"can be used in any incerior and in\n"
                              "a modern environment.",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "DellaRespira-Regular",
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Category',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Indoor',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Plant',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Faux',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Small',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87,
                                  fontFamily: "DellaRespira-Regular"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 30),
                    child: Container(
                      height: 50,
                      width: 240,
                      child: Center(
                          child: Text(
                        "Buy Now ",
                        style: TextStyle(
                            fontFamily: "DellaRespira-Regular",
                            color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A8C53),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: -260,
                left: 10,
                right: 10,
                child: Container(
                  height: 350,
                  width: 10,
                  decoration: BoxDecoration(
                    //      color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                )),
          ],
        ),
      ]),
    );
  }
}
