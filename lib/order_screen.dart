import "package:flutter/material.dart";
import 'package:fossip/products.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => new _OrderScreenState();
}

List<String> productname = [
  "Cheese Garlic Bread ",
  "Cheese Garlic Bread",
  "Cheese Garlic Bread",
  "Cheese Garlic Bread"
];
List<String> imageName = [
  "assets/gb1.jpg ",
  "assets/gb1.jpg",
  "assets/gb1.jpg",
  "assets/gb1.jpg"
];
List<String> orderValue = ["190", "190", "190", "190"];
List<int> productId = [100, 101, 102, 103];

class _OrderScreenState extends State<OrderScreen> {
  bool isFollowed = false;
  bool isveg = true;
  bool isNonveg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
          elevation: 0.0,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 14.0, top: 12.0, bottom: 12),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFollowed = !isFollowed;
                  });
                },
                child: Container(
                  width: isFollowed ? 110 : 100,
                  height: 60,
                  child: Card(
                      // margin: EdgeInsets.only(left: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      color: isFollowed ? Colors.green : Colors.blue[500],
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.cloud, color: Colors.white, size: 15),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              isFollowed ? "Followed" : "Follow",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                    child: Container(
                      // height: 180,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        ListTile(
                          isThreeLine: true,
                          leading: Container(
                            width: 90,
                            height: 100,
                            child: Card(
                              elevation: 0.0,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Container(
                                width: 90,
                                // height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    image: DecorationImage(
                                      image: AssetImage("assets/image.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pizza Hut",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.grey[800],
                                    size: 15,
                                  ),
                                  Text(
                                    " 4.7",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          subtitle: Column(
                            children: [
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Italian | Continental",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    isFollowed
                                        ? "121 Followers"
                                        : "120 Followers",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "2 Offers",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Timing",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "9:00 Am -10:00PM",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pickup",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "10 - 15 mins",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Straight City",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Pizzas",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Garlic Breads",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Pastas",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Specials",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 5,
                          color: Colors.grey[250],
                        ),
                      ]),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " --MENU--",
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              // width: 100,
                              height: 40,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isveg = !isveg;
                                  });
                                },
                                child: Card(
                                    // margin: EdgeInsets.only(left: 4),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: isveg
                                              ? Colors.green
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, right: 12),
                                      child: Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Icon(Icons.crop_square_rounded,
                                                  color: isveg
                                                      ? Colors.green
                                                      : Colors.grey,
                                                  size: 25),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0, top: 10),
                                                child: Icon(
                                                  Icons.circle,
                                                  size: 5,
                                                  color: isveg
                                                      ? Colors.green
                                                      : Colors.grey,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Veg",
                                            style: TextStyle(
                                              color: isveg
                                                  ? Colors.green
                                                  : Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            Container(
                              // width: 100,
                              height: 40,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isNonveg = !isNonveg;
                                  });
                                },
                                child: Card(
                                    // margin: EdgeInsets.only(left: 4),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: isNonveg
                                              ? Colors.red
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, right: 12),
                                      child: Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Icon(Icons.crop_square_rounded,
                                                  color: isNonveg
                                                      ? Colors.red
                                                      : Colors.grey,
                                                  size: 25),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0, top: 10),
                                                child: Icon(
                                                  Icons.circle,
                                                  size: 5,
                                                  color: isNonveg
                                                      ? Colors.red
                                                      : Colors.grey,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Non-Veg",
                                            style: TextStyle(
                                              color: isNonveg
                                                  ? Colors.red
                                                  : Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, top: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Reccommended !!",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        Products(
                            orderValue: "140",
                            imageName: "assets/gb2.jpg",
                            productId: 100,
                            productName: "Cheese Garlic Bread"),
                        Products(
                            orderValue: "190",
                            imageName: "assets/gb1.jpg",
                            productId: 101,
                            productName: "Stuffed Garlic Bread"),
                        Products(
                            orderValue: "240",
                            imageName: "assets/gb4.jpg",
                            productId: 102,
                            productName: "Garlic Bread Sticks"),
                        Products(
                            orderValue: "210",
                            imageName: "assets/gb3.jpg",
                            productId: 103,
                            productName: "Bowled Garlic Bread"),
                        Products(
                            orderValue: "270",
                            imageName: "assets/gb1.jpg",
                            productId: 104,
                            productName: "Cheese Corn Garlic Bread"),
                        Products(
                            orderValue: "190",
                            imageName: "assets/gb1.jpg",
                            productId: 101,
                            productName: "Stuffed Garlic Bread"),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: Card(
                          margin: EdgeInsets.only(
                            left: 2,
                            right: 2,
                          ),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Go to Cart",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "3 items",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
