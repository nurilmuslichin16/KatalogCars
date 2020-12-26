import 'package:flutter/material.dart';
import 'package:rental_mobil/model/cars.dart';

class ListMobil extends StatelessWidget {
  final String type;

  ListMobil({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

var carsList = [
  Cars("Honda Civic", "Sedan", "sedan_civic.png", "Honda", "200", "30", "4",
      "6"),
  Cars("BMW M3", "Sedan", "sedan_m3.png", "BMW", "220", "32", "4", "6"),
  Cars("Toyota Fortuner", "SUV", "suv_fortuner.png", "Toyota", "300", "45", "7",
      "6"),
  Cars("Nissan X-Trail", "SUV", "suv_xtrail.png", "Nissan", "330", "47", "6",
      "6"),
  Cars("Toyota Calya", "MPV", "mpv_calya.png", "Toyota", "250", "35", "7", "6"),
  Cars("Daihatsu Sigra", "MPV", "mpv_sigra.png", "Daihatsu", "220", "27", "7",
      "6"),
];
