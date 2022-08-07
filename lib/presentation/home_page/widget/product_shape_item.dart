import 'dart:math';

import 'package:daf_task/presentation/home_page/widget/view_price_item.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class ProductShapeITem extends StatelessWidget {
  final Size size;
  final String productTitle;
  final String productImage;
  final String productPrice;
  final bool isDiscount;
  final int star;
  const ProductShapeITem({
    Key? key,
    this.isDiscount = false,
    required this.size,
    required this.star,
    required this.productImage,
    required this.productPrice,
    required this.productTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  productImage,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              isDiscount
                  ? Positioned(
                      right: 0,
                      child: Card(
                        color: Colors.blue.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "-50%",
                            style: TextStyle(color: OwnColor.mainColor),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Text(
                productTitle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < star ? Icons.star_rate : Icons.star_border,
                    size: 15,
                    color: index < star ? Colors.amber.shade700 : Colors.grey,
                  ),
                ),
              ),
              Text(
                "(7 Reviews)",
                style: TextStyle(
                  fontSize: size.shortestSide * .025,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: ViewPriceItem(
                price: productPrice,
                size: size,
                color: OwnColor.mainColor,
                fontSize: .045),
          ),
          isDiscount
              ? SizedBox(
                  height: 13,
                  child: Row(children: [
                    Stack(
                      children: [
                        ViewPriceItem(
                            price: "8.560.00",
                            size: size,
                            color: Colors.grey.shade400,
                            fontSize: .025),
                        Positioned(
                          bottom: 7,
                          left: 0,
                          child: Transform.rotate(
                            angle: -pi / 35,
                            child: Container(
                              height: 1,
                              color: Colors.grey,
                              width: 60,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ViewPriceItem(
                        price: "Saved 1.560.00",
                        size: size,
                        color: Colors.grey,
                        fontSize: .025),
                  ]),
                )
              : const SizedBox(
                  height: 13,
                )
        ],
      ),
    );
  }
}
