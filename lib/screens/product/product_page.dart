import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wearedesigners/constants.dart';
import 'package:wearedesigners/models/product_model.dart';
import 'package:wearedesigners/screens/home/home_page.dart';
import 'package:wearedesigners/styles.dart';

class ProductPage extends StatefulWidget {
  final ProductModule product;
  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  get getNavigation => Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(top: 56),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
    ),
  );

  get getImageWithText => Stack(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft:  Radius.circular(30)),
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.white
              ],
            ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.multiply,
          child: widget.product.img,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            Text(
              widget.product.header,
              style: productHeaderTextStyle,
            ),
             Text(
              widget.product.subHeader,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24,bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getNavigation,
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  getImageWithText,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "\$${widget.product.price}",
                                style: TextStyle(
                                    color: productColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                FontAwesomeIcons.react,
                                size: 50,
                                color: productColor.withOpacity(0.7),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text(
                                "Band Type",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                               Text(
                                widget.product.bandType,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text(
                                "Band Width",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.product.bandWidth,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Bezel Material",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.product.material,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Flexible(
                             child: SingleChildScrollView(
                                 scrollDirection: Axis.vertical,
                                 child: Text(
                                     widget.product.productDescription)),
                           ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            child:Container(
                              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                              decoration: BoxDecoration(color: productColor, borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("ADD TO BADGE", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),const SizedBox(width: 20,), const Icon(Icons.add, color: Colors.white,)],
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
