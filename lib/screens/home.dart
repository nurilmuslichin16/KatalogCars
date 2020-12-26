import 'package:flutter/material.dart';
import 'package:rental_mobil/constant.dart';
import 'package:rental_mobil/model/type_cars.dart';
import 'package:rental_mobil/screens/list_mobil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Catalog Cars",
          style: TextStyle(color: kCardColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: typeCarList.map((car) {
          return Container(
            margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ListMobil(type: car.type);
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          car.type,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Car",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "More Information",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white70,
                              size: 14,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    child: Image.asset(
                      car.imageAsset,
                      width: size.height * 0.3,
                    )),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

var typeCarList = [
  TypeCar("Sedan", 'images/sedan.png'),
  TypeCar("MPV", 'images/mpv.png'),
  TypeCar("SUV", 'images/suv.png'),
  TypeCar("Sport", 'images/sport.png'),
  TypeCar("Offroad", 'images/offroad.png'),
];
