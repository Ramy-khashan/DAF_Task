import 'package:daf_task/model/home_page_model/product_model.dart';

import '../../model/home_page_model/our_services.dart';

class HomePageData {
  static List<OurServicesModel> ourServicesData = [
    OurServicesModel(image: "assets/images/pills.png", head: "Productio"),
    OurServicesModel(image: "assets/images/lab.png", head: "Lab"),
    OurServicesModel(image: "assets/images/dr.png", head: "Doctors"),
    OurServicesModel(image: "assets/images/hospital.png", head: "Hospitals"),
  ];
  static List<String> reminderImages = [
    "assets/images/dose.png",
    "assets/images/appointment.png"
  ];
  static List<ProductModel> recommendedProduct = [
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product11.png",
        productPrice: "6,560.00",
        isDiscount: false,
        starNumber: 3),
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product12.png",
        productPrice: "6,560.00",
        isDiscount: true,
        starNumber: 4),
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product11.png",
        productPrice: "6,560.00",
        isDiscount: false,
        starNumber: 5),
  ];
  static List<ProductModel> mostSellingProduct = [
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product21.png",
        productPrice: "6,560.00",
        isDiscount: false,
        starNumber: 5),
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product22.png",
        productPrice: "6,560.00",
        isDiscount: true,
        starNumber: 4),
    ProductModel(
        productTitle: "DArk kiss-Bath&Body",
        productImage: "assets/images/product21.png",
        productPrice: "6,560.00",
        isDiscount: false,
        starNumber: 3),
  ];
}
