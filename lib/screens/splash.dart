import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_mobil/constant.dart';
import 'package:rental_mobil/screens/home.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              left: -25,
              child: Container(
                width: size.width * 0.2,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.3),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -100,
              child: Container(
                width: size.width * 0.4,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.8),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              child: Text(
                "Created By Nuril Muslichin",
                style: TextStyle(
                  fontFamily: 'SF-Text',
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wellcome To Catalogue Car",
                  style: TextStyle(
                      fontSize: 24,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SF-Text'),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                SvgPicture.asset(
                  'images/splash.svg',
                  height: size.height * 0.25,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Let's find your favorite car",
                  style:
                      TextStyle(color: Colors.black45, fontFamily: 'SF-Text'),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) {
                            return Home();
                          }), (_) => false);
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
