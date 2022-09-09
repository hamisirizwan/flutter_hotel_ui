import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  String name;
  String location;
  String imgURL;

  HotelDetailsPage(this.name, this.location, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //image
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/$imgURL"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //row 1
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$80",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text("/Night")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //row 2
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("$location"),
                      ],
                    ),
                    Row(
                      children: [
                        star(),
                        star(),
                        star(),
                        star(),
                        star(),
                        Text("4.9"),
                      ],
                    )
                  ],
                ),
              ),
              //row 3
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "read more",
                      style: TextStyle(color: Colors.blue[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //text
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                    "$name is a fivestar hotel complimented with 80 well bedroom and suit, odern residence in a very strategic location from the city Center"),
              ),

              //text facilites

              //listview

              //button
              SizedBox(
                height: 80,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("RESERVATION INFO"),
                        content: const Text(
                            "your reservation will be processed shortly"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              // color: Colors.green,
                              padding: const EdgeInsets.all(14),
                              child: const Text("okay"),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("Book Now"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget star() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow[800],
      ),
      SizedBox(
        width: 3,
      ),
    ],
  );
}
