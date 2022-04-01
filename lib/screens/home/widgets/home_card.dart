import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wearedesigners/constants.dart';
import 'package:wearedesigners/models/home_card_model.dart';

class HomeCard extends StatelessWidget {
  final HomeCardModule cardModule;
  const HomeCard({Key? key, required this.cardModule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: cardModule.bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Image.asset("assets/images/pin.png", height: 30),
                radius: 24,
                backgroundColor: Colors.black.withOpacity(0.1),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width-230,
                          child: Text(
                            cardModule.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        Text(cardModule.date,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.8)))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                        cardModule.description,
                        style: TextStyle(
                          height: 1.4,
                            fontSize: 14, color: Colors.white.withOpacity(0.8))),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cardModule.action,
                        GestureDetector(
                          onTap: cardModule.heartAction,
                          child: Icon(cardModule.isHeartFill?FontAwesomeIcons.solidHeart:FontAwesomeIcons.heart, color: Colors.white.withOpacity(0.8),),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
