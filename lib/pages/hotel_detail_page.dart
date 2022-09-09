import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  String name;
  String location;

  HotelDetailsPage(this.name, this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 5.0,
            ),
            Text("$location"),
          ],
        ),
      ),
    );
  }
}
