class ProductModel {
  final String productTitle;
  final String productImage;
  final String productPrice;
  final bool isDiscount;
  final int starNumber;

  ProductModel({
    required this.productTitle,
    required this.productImage,
    required this.productPrice,
    required this.isDiscount,
    required this.starNumber,
  });
}
