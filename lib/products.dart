import 'package:flutter/material.dart';


class Products extends StatefulWidget{

  const Products(
      {Key? key,
      required this.productName,
 required this.imageName, required this.orderValue, required this.productId})
      : super(key: key);
  final String productName;
  final String imageName;
  final String orderValue;
  final int productId;

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>{
  @override
  Widget build(BuildContext context){
    
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.productName,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          color: Colors.grey[700],
                          size: 14,
                        ),
                        Text(
                          widget.orderValue,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Nothing beats our garlic bread!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 30
                // ),
                Container(
                  height: 100,
                  child: Card(
                    elevation: 0.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 90,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              image: DecorationImage(
                                image: AssetImage(widget.imageName),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:70),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              child: CircleAvatar(
                                 radius: 16,
                                backgroundColor: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:4.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "30 %",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "OFF",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 90,
                              height: 35,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
          ])),
      
    ],
  );
  }
}
