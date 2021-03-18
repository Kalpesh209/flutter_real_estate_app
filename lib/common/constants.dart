import 'package:flutter_real_estate_app_ui/models/data_model.dart';


class Constants {
  static List<House> houseList = [
    House(
      id: 1,
      amount: 1000000,
      address: 'Jenison, MI 49428, SF',
      bedrooms: 3,
      bathrooms: 2,
      squarefoot: 1.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 2,
      amount: 2000000,
      address: 'Delhi, MI 55555, SF',
      bedrooms: 4,
      bathrooms: 4,
      squarefoot: 2.416,
      garages: 3,
      kitchen: 2,
    ),
    House(
      id: 3,
      amount: 3000000,
      address: 'Mumbai, MI 49428, SF',
      bedrooms: 5,
      bathrooms: 2,
      squarefoot: 3.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 4,
      amount: 4000000,
      address: 'Pune, MI 55555, SF',
      bedrooms: 3,
      bathrooms: 4,
      squarefoot: 4.416,
      garages: 3,
      kitchen: 2,
    ),
    House(
      id: 5,
      amount: 5000000,
      address: 'Rajkot, MI 49428, SF',
      bedrooms: 4,
      bathrooms: 2,
      squarefoot: 5.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 6,
      amount: 6000000,
      address: 'Bhuj, MI 55555, SF',
      bedrooms: 5,
      bathrooms: 4,
      squarefoot: 6.416,
      garages: 3,
      kitchen: 2,
    ),
  ];

  static List<String> imageList = [
    "assets/images/house_1.png",
    "assets/images/house_2.png",
    "assets/images/house_3.png",
    "assets/images/house_4.png",
    "assets/images/house_5.png",
    "assets/images/house_6.png",
    "assets/images/house_7.png",
  ];
}
