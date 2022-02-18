import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/category.dart';
import 'package:furniture_app/size_config.dart';

import '../../../components/title_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? defaultsize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultsize! * 2), //20
            child: TitleText(title: 'Browse by Catagories'),
          ),
          AspectRatio(
            aspectRatio: 0.83,
            child: SizedBox(
              width: defaultsize * 20.5, //205
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  //this is custom shape that's why we need to use ClipPath
                  // Container(color: Colors.blueAccent),
                  ClipPath(
                    clipper: CatagoryCustomShape(),
                    child: AspectRatio(
                      aspectRatio: 1.025,
                      child: Container(
                        color: kSecondaryColor,
                        child: Column(
                          children: [
                            TitleText()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: AspectRatio(
                      aspectRatio: 1.15,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/spinner.gif',
                        image: catagory.image,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CatagoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;

    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
