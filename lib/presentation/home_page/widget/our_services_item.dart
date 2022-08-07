import 'package:flutter/material.dart';

import '../../../data/home_page_data/home_page_data.dart';

class OurServicesItem extends StatelessWidget {
  const OurServicesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => Column(
                children: [
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        HomePageData.ourServicesData[index].image,
                        width: 50,
                        height: 55,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    HomePageData.ourServicesData[index].head,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              )),
    );
  }
}
