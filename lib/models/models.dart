import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final String categoryImage;

  final Color categoryBackgroundColor;

  CategoryModel({
    required this.categoryName,
    required this.categoryImage,

    required this.categoryBackgroundColor,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      categoryName: "Swift Globe",
      categoryImage: "assets/model_images/img_1.png",
      categoryBackgroundColor:  const Color(0xFF31DC43).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "Voucher",
      categoryImage: "assets/model_images/img_2.png",

      categoryBackgroundColor:  const Color(0xFF600AB7).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "Invesmant",
      categoryImage: "assets/model_images/img_3.png",

      categoryBackgroundColor:  const Color(0xFF56B8FF).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "Electricty",
      categoryImage: "assets/model_images/img_4.png",

      categoryBackgroundColor:  const Color(0xFFFFC736).withOpacity(0.10),
    ),


    CategoryModel(
      categoryName: "Withdraval",
      categoryImage: "assets/model_images/img_5.png",

      categoryBackgroundColor:  const Color(0xFF15FFF1).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "SMart",
      categoryImage: "assets/model_images/img_6.png",

      categoryBackgroundColor:  const Color(0xFFFF00B8).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "Refund",
      categoryImage: "assets/model_images/img_7.png",

      categoryBackgroundColor:  const Color(0xFFFFC736).withOpacity(0.10),
    ),
    CategoryModel(
      categoryName: "Donation",
      categoryImage: "assets/model_images/img_8.png",

      categoryBackgroundColor:  const Color(0xFF56B8FF).withOpacity(0.10),
    ),

  ];
}
