import 'package:flutter/material.dart';
import 'package:rental_mobil/constant.dart';
import 'package:rental_mobil/model/cars.dart';
import 'package:rental_mobil/screens/detail_mobil.dart';

class ListMobil extends StatelessWidget {
  final String type;

  ListMobil({@required this.type});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var listData = carsList.where((element) => element.type == this.type);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(this.type,
            style: TextStyle(color: kCardColor, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: listData.map((car) {
          if (this.type == car.type) {
            return Container(
              margin: EdgeInsets.only(bottom: 0, left: 16, right: 16),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailCar(cars: car);
                      }));
                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: kCardColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            car.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            car.type,
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
                              Icon(
                                Icons.attach_money,
                                color: kPrimaryColor,
                              ),
                              Text(
                                car.price,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
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
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        car.imageAsset,
                        width: size.height * 0.3,
                      )),
                ],
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}

var carsList = [
  Cars("Honda Civic", "Sedan", "images/sedan_civic.png", "Honda", "22 000",
      "200", "30", "4", "6"),
  Cars("BMW M3", "Sedan", "images/sedan_m3.png", "BMW", "30 000", "220", "32",
      "4", "6"),
  Cars("Toyota Fortuner", "SUV", "images/suv_fortuner.png", "Toyota", "35 000",
      "300", "45", "7", "6"),
  Cars("Nissan X-Trail", "SUV", "images/suv_xtrail.png", "Nissan", "39 000",
      "330", "47", "6", "6"),
  Cars("Toyota Calya", "MPV", "images/mpv_calya.png", "Toyota", "25 000", "250",
      "35", "7", "6"),
  Cars("Daihatsu Sigra", "MPV", "images/mpv_sigra.png", "Daihatsu", "27 000",
      "220", "27", "7", "6"),
  Cars("Porsche 718", "Sport", "images/sport_718.png", "Porsche", "107 000",
      "400", "40", "2", "7"),
  Cars("Lamborghini Aventador", "Sport", "images/sport_aventador.png",
      "Lamborghini", "120 000", "450", "45", "2", "7"),
  Cars("Jeep Wrangler", "Offroad", "images/offroad.png", "Jeep", "60 000",
      "250", "35", "4", "6"),
  Cars("Ford Explorer", "Offroad", "images/offroad_explorer.png", "Ford",
      "77 000", "280", "37", "4", "6"),
];
