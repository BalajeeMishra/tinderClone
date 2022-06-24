import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import '../image.dart';
import 'package:flutter/cupertino.dart';
import 'tabScreen.dart';

class SwapScreen extends StatelessWidget {
  void clickable() {}
  final List<String> images = [
    "assets/girls.jpg",
    "assets/me.jpg",
    "assets/head-2.jpg",
    "assets/Cute.jpg",
    "assets/pexels.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    final SwipingCardDeck deck = SwipingCardDeck(
      cardDeck: getCardDeck(),
      onDeckEmpty: () => debugPrint("Card deck empty"),
      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
      cardWidth: 200,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 1.5 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/me.jpg",
                  ),
                  radius: 25,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 60.0,
                ),
                child: Icon(
                  const IconData(0xe9a9, fontFamily: "icomoon"),
                  color: Colors.red,
                  size: 35,
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(
                //   horizontal: 80,
                // ),
                child: Text(
                  "tinder",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
//yaha tak upar wale part ka hai...
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              deck,
              Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.black87,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40,
                      child: IconButton(
                        icon: const Icon(Icons.clear),
                        iconSize: 40,
                        color: Colors.red,
                        onPressed: deck.animationActive
                            ? null
                            : () => deck.swipeLeft(),
                      ),
                    ),
                    // const SizedBox(width: 40),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40,
                      child: IconButton(
                        icon: const Icon(Icons.check),
                        iconSize: 40,
                        color: Colors.green,
                        onPressed: deck.animationActive
                            ? null
                            : () => deck.swipeRight(),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: IconButton(
                        icon: const Icon(Icons.star),
                        iconSize: 30,
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: IconButton(
                        icon: const Icon(Icons.bolt),
                        iconSize: 30,
                        color: Colors.purple,
                        onPressed: () {},
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: IconButton(
                        icon: const Icon(Icons.play_circle_outline_sharp),
                        iconSize: 30,
                        color: Colors.purple,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Expanded(
          //   child: Container(
          //     constraints: BoxConstraints(maxHeight: 10),
          //     child: TabScreen(),
          //   ),
          // ),
        ],
      ),
    );
  }

  List<Card> getCardDeck() {
    List<Card> cardDeck = [];

    images.forEach(
      (e) => cardDeck.add(Card(
        // margin: EdgeInsets.symmetric(vertical: 60, horizontal: 0),
        child: ImageController(e),
      )),
    );
    return cardDeck;
  }
}
