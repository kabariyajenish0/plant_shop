import 'package:flutter/material.dart';
import 'package:plant_shop/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selecte = 0;

  List<Map<String, dynamic>> namelist = [
    {
      'name': "Indoor",
    },
    {'name': "Outdoor"},
    {'name': "Popular"},
    {'name': "Recommanded"},
  ];
  List<Map<String, dynamic>> imagelist = [
    {
      'image': "assets/image/artifical.png",
      'text': "Artificial aloe",
      'name1': "Plant",
      'prise': "\$48"
    },
    {
      "image": "assets/image/capra.png",
      'text': "Capra small",
      'name1': "Plant",
      'prise': "\$37"
    },
    {
      "image": "assets/image/artifical.png",
      'text': "Artificial aloe",
      'name1': "Plant",
      'prise': "\$48"
    },
  ];
  List<Map<String, dynamic>> plantlist = [
    {
      'pic': "assets/image/croton1.png",
      'mrp': "\$37",
      'nameplat': "Croton Petra"
    },
    {
      'pic': "assets/image/croton2.png",
      'mrp': "\$48",
      'nameplat': "Beautiful Plant"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selecte = value;
          });
        },
        elevation: 30,
        selectedIconTheme: IconThemeData(color: Colors.green),
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade400),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_rounded), label: ""),
        ],
      ),
      backgroundColor: Color(0xffFFF9EF),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.clear_all_outlined,
                  color: Color(0xff2A8C53),
                ),
                Text("Plant Shop",
                    style: TextStyle(
                        fontFamily: "DellaRespira-Regular",
                        color: Color(0xff2A8C53),
                        fontSize: 20)),
                Image(
                  image: AssetImage("assets/image/avtar.png"),
                  width: 30,
                  height: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                            fontSize: 15, color: Colors.grey.shade400),
                        fillColor: Colors.white,
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.tune),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              width: 365,
              height: 60,
              color: Color(0xffFFF9EF),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selecte = index;
                          });
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              color: selecte == index
                                  ? Color(0xff2A8C53)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 6),
                            child: Text(
                              namelist[index]['name'],
                              style: TextStyle(
                                fontFamily: "DellaRespira-Regular",
                                fontSize: 15,
                                color: selecte == index
                                    ? Color(0xffFFF9EF)
                                    : Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            width: 400,
            height: 325,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: imagelist.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Page3(
                                      image: imagelist[index]["image"],
                                      text: imagelist[index]["text"],
                                      name1: imagelist[index]["name1"],
                                      prise: imagelist[index]["prise"],
                                    )));
                      },
                      child: Container(
                        height: 240,
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(imagelist[index]["text"],
                                style: TextStyle(
                                    fontFamily: "DellaRespira-Regular",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18)),
                            Text(imagelist[index]["name1"],
                                style: TextStyle(
                                    fontFamily: "DellaRespira-Regular",
                                    color: Color(0xff2A8C53),
                                    fontSize: 15)),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 60,
                              height: 25,
                              child: Center(
                                child: Text("Indoor",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "DellaRespira-Regular",
                                        fontSize: 12)),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 70, left: 20),
                        decoration: BoxDecoration(
                          color: Color(0xffF3CF91),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: -10,
                      child: Container(
                        height: 200,
                        width: 190,
                        decoration: BoxDecoration(
                          //  color: Colors.redAccent,
                          image: DecorationImage(
                            image: AssetImage(
                              imagelist[index]['image'],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
                      bottom: -10,
                      left: 40,
                      right: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            child: Center(
                                child: Text(
                              imagelist[index]['prise'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "DellaRespira-Regular",
                                  fontSize: 15),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xff2A8C53),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.add, color: Colors.white),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xff2A8C53),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                Text(
                  'Our Suggests',
                  style: TextStyle(
                      fontFamily: "DellaRespira-Regular",
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: plantlist.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 120,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(plantlist[index]["nameplat"],
                                    style: TextStyle(
                                        fontFamily: "DellaRespira-Regular",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18)),
                                Text("Plant",
                                    style: TextStyle(
                                        fontFamily: "DellaRespira-Regular",
                                        color: Color(0xff2A8C53),
                                        fontSize: 15)),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      plantlist[index]["mrp"],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffEEE049),
                                    ),
                                    Text(
                                      "4.0",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.only(top: 40, left: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffEAF0EC),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        height: 140,
                        width: 110,
                        decoration: BoxDecoration(
                          //color: Colors.redAccent,
                          image: DecorationImage(
                            image: AssetImage(
                              plantlist[index]['pic'],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
