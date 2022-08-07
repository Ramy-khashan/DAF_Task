import 'package:daf_task/constant/colors.dart';
import 'package:daf_task/data/home_page_data/home_page_data.dart';
import 'package:daf_task/presentation/home_page/widget/head_item.dart';
import 'package:daf_task/presentation/home_page/widget/our_services_item.dart';
import 'package:daf_task/presentation/home_page/widget/product_shape_item.dart';
import 'package:daf_task/presentation/home_page/widget/reminder_item.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: CircleAvatar(
            backgroundColor: OwnColor.mainColor,
            backgroundImage:
                const AssetImage("assets/images/profile_image.png"),
            radius: 20,
          ),
        ),
        title: Text("Good evening Ali",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.shortestSide * .045,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              onChanged: (val) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "What are you looking for ?",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
          ),
          preferredSize: const Size.fromHeight(60),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadItem(head: "Trending", size: size),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    image: AssetImage("assets/images/bgimage.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    height: 160,
                    width: 135,
                    decoration: BoxDecoration(
                      color: OwnColor.mainColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            child: Text(
                              "Learn More",
                              style: TextStyle(color: OwnColor.mainColor),
                            )),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            HeadItem(head: "Our Services", size: size),
            const OurServicesItem(),
            HeadItem(head: "Reminders", size: size),
            ReminderIiem(
                img: "assets/images/dose.png",
                size: size,
                subtitle: "Next Dosage",
                title: "Dose Reminder"),
            ReminderIiem(
                img: "assets/images/appointment.png",
                size: size,
                subtitle: "See Your Next Appointemnt",
                title: "Appointment"),
            HeadItem(head: "Recommended For You", size: size),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: List.generate(
                    3,
                    (index) => ProductShapeITem(
                      size: size,
                      star: HomePageData.recommendedProduct[index].starNumber,
                      productImage:
                          HomePageData.recommendedProduct[index].productImage,
                      productPrice:
                          HomePageData.recommendedProduct[index].productPrice,
                      productTitle:
                          HomePageData.recommendedProduct[index].productTitle,
                      isDiscount:
                          HomePageData.recommendedProduct[index].isDiscount,
                    ),
                  ),
                ),
              ),
            ),
            HeadItem(head: "Most Selling", size: size),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => ProductShapeITem(
                    size: size,
                    productImage:
                        HomePageData.mostSellingProduct[index].productImage,
                    star: HomePageData.mostSellingProduct[index].starNumber,
                    productPrice:
                        HomePageData.mostSellingProduct[index].productPrice,
                    productTitle:
                        HomePageData.mostSellingProduct[index].productTitle,
                    isDiscount:
                        HomePageData.mostSellingProduct[index].isDiscount,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
