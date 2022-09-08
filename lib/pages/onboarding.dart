import 'package:flutter/material.dart';
import 'package:hotel_ui/pages/home_page.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text("GET STARTED"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
