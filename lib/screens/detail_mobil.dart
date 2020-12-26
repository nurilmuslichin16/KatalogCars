import 'package:flutter/material.dart';
import 'package:rental_mobil/constant.dart';
import 'package:rental_mobil/model/cars.dart';

class DetailCar extends StatelessWidget {
  final Cars cars;

  DetailCar({@required this.cars});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kCardColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: SafeArea(
              child: Container(
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      cars.name,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: kPrimaryColor,
                        ),
                        Text(
                          cars.price,
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      cars.brand,
                      style: TextStyle(
                          color: Color(0xFFff1e56),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          ),
          Positioned(
              top: size.height * 0.35,
              child: Image.asset(
                cars.imageAsset,
                width: size.height * 0.55,
              ))
        ],
      ),
    );
  }
}
