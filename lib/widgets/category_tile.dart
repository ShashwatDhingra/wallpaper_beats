import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.size});
  final String title;
  final String imageUrl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
          child: Stack(alignment: Alignment.center, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: Duration(seconds: 1),
              colorBlendMode: BlendMode.multiply,
              color: Colors.black38,
              width: size.width * .3,
              height: size.height * .07,
            )),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        )
      ])),
    );
  }
}
