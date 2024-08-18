import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/List_tile.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class FdPage extends StatefulWidget {
  const FdPage({super.key, required this.fdsList});
  final List<Map<String, String>> fdsList;

  @override
  State<FdPage> createState() => _FdPageState();
}

class _FdPageState extends State<FdPage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F))),
          elevation: 0,
          backgroundColor: const Color(0xffFFFFFF),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: screenheight * 0.05,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Fixed Deposits',style: subHeading(textColor: const Color(0xff33404F),textSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9.0, left: 5.0),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff00E7B1)
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.fdsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Column(
                            children: [
                              listTile(
                                title: widget.fdsList[index]['title']!,
                                subtitle: widget.fdsList[index]['subtitle']!,
                                imageURl: widget.fdsList[index]['image']!,
                              ),
                            ],
                          ),
                        );
                      })),
            ],
          ),
        ));
  }
}
