import 'package:flutter/material.dart';
import 'package:rental_mobil/constant.dart';
import 'package:rental_mobil/model/cars.dart';

class DetailCar extends StatelessWidget {
  final Cars cars;

  DetailCar({@required this.cars});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double position;

    switch (cars.name) {
      case "BMW M3":
        position = size.height * 0.27;
        break;
      case "Toyota Calya":
        position = size.height * 0.3;
        break;
      case "Daihatsu Sigra":
        position = size.height * 0.26;
        break;
      case "Toyota Fortuner":
        position = size.height * 0.28;
        break;
      case "Nissan X-Trail":
        position = size.height * 0.29;
        break;
      case "Porsche 718":
        position = size.height * 0.29;
        break;
      case "Jeep Wrangler":
        position = size.height * 0.21;
        break;
      default:
        position = size.height * 0.35;
    }

    return Scaffold(
      backgroundColor: kCardColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        FavoritButton()
                      ],
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
              top: position,
              child: Image.asset(
                cars.imageAsset,
                width: size.height * 0.55,
              )),
          Positioned(
              bottom: size.height * 0.25,
              child: Container(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: size.height * 0.13,
                      width: size.height * 0.13,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kCardColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_car,
                            size: 34,
                            color: kCardColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Speed",
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor.withOpacity(0.7)),
                          ),
                          Text(
                            cars.km + " km/h",
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.13,
                      width: size.height * 0.13,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kCardColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airline_seat_recline_normal,
                            size: 34,
                            color: kCardColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Seats",
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor.withOpacity(0.7)),
                          ),
                          Text(
                            cars.seats,
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.13,
                      width: size.height * 0.13,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kCardColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.battery_charging_full,
                            size: 34,
                            color: kCardColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tank",
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor.withOpacity(0.7)),
                          ),
                          Text(
                            cars.tank + " L",
                            style: TextStyle(
                                fontSize: 12,
                                color: kCardColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: size.height * 0.13,
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24),
                width: size.width,
                child: Text(
                  "Akhir tahun menjadi waktu yang pas untuk membeli mobil. Yang pasti banyak keuntungannya seperti promo dan diskon mobil hingga puluhan juta rupiah dari berbagai tipe mobil.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14, color: kCardColor.withOpacity(0.7)),
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
                  width: size.width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: FlatButton(
                          color: kCardColor,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          onPressed: () {},
                          child: Text(
                            "Order Now",
                            style: TextStyle(color: Colors.white),
                          )))))
        ],
      ),
    );
  }
}

class FavoritButton extends StatefulWidget {
  @override
  _FavoritButtonState createState() => _FavoritButtonState();
}

class _FavoritButtonState extends State<FavoritButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
