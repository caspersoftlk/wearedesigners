import 'package:flutter/material.dart';

class ProductModule{
  final String header;
  final String subHeader;
  final Image img;
  final double price;
  final String bandType;
  final String bandWidth;
  final String material;
  final String productDescription;

  ProductModule({required this.header, required this.subHeader, required this.img, required this.price, required this.bandType, required this.bandWidth, required this.material, required this.productDescription});
}