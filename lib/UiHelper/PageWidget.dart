import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/List_tile.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class CatPageWidget extends StatelessWidget {
  final String title;
  final List<Map<String, String>> posters;

  const CatPageWidget({Key? key, required this.title, required this.posters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F))),
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 18, bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Text(
                      title,
                      style: subHeading(
                        textColor: Color(0xff33404F),
                        textSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, left: 5),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xff00E7B1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: posters.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: listTile(
                        title: posters[index]['title']!,
                        subtitle: posters[index]['subtitle']!,
                        imageURl: posters[index]['image']!,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

