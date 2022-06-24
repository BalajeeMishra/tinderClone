import 'package:flutter/material.dart';

class ImageController extends StatelessWidget {
  final imagePath;
  ImageController(this.imagePath);
  // const ImageController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 180,
        margin: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
            alignment: Alignment.center,
          ),
        ));
  }
}
