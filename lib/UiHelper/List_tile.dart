import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURl;

  listTile(
      {required this.title, required this.subtitle, required this.imageURl});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.center,
      child: Container(
        height: screenheight * 0.15,
        width: screenwidth * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 6,
                blurRadius: 7.5)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenheight * 0.005,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: screenheight * 0.22,
                width: screenwidth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(imageURl), fit: BoxFit.fill)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
