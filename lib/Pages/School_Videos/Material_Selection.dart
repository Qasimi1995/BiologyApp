import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../localization/localization_constants.dart';
import '../../routes/route_name.dart';
import '../books_page.dart';

class Material_Selection extends StatefulWidget {
  const Material_Selection({Key? key}) : super(key: key);

  @override
  _Material_SelectionState createState() => _Material_SelectionState();
}

class _Material_SelectionState extends State<Material_Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'Material_Selection'),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) =>
        orientation == Orientation.portrait ? Vertical() : Landscape(),
      ),
    );
  }
  Widget Vertical() {
    Locale myLocale = Localizations.localeOf(context);
    String localdata=myLocale.toLanguageTag();
    return ListView(
      children: <Widget>[
        Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.6  ,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0, left: 10.0, bottom: 10.0, top: 20.0),
                      child: InkWell(
                        child: Container(
                          //height: MediaQuery.of(context).size.height * 0.5,
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/Icons/Chem_kankor.svg',
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                getTranslated(context, 'MathـKankorـForms'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Books_page(Language_Data:localdata)));
                        },
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: InkWell(
                        child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/Icons/Chem_All_Books.svg',
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                getTranslated(context, 'Math_Forms_Videos'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, youtubeGradeRoute);
                        },
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }

  //Home Page for Landscape View
  Widget Landscape() {
    Locale myLocale = Localizations.localeOf(context);
    String localappdata=myLocale.toLanguageTag();
    return ListView(
      children: <Widget>[
        Row(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.5,
            //   height: MediaQuery.of(context).size.height,
            //   margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            //   child: Center(
            //     child: ListView(
            //       children: [
            //         SizedBox(
            //           height: 250.0,
            //           width: double.infinity,
            //           child: Carousel(
            //             images: [
            //               Image.asset(
            //                 'assets/slider/3.jpg',
            //                 fit: BoxFit.cover,
            //               ),
            //               Image.asset(
            //                 'assets/slider/2.jpg',
            //                 fit: BoxFit.cover,
            //               )
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Container(
                width: MediaQuery.of(context).size.width * 0.46,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10.0, right: 10, left: 10.0, bottom: 10.0),
                      child: InkWell(
                        child: Container(
                          height: 114.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/Icons/Chem_books.svg',
                                height: 60.0,
                                width: 60.0,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                getTranslated(context, 'MathـKankorـForms'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Books_page(Language_Data:localappdata)));
                        },
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 10, left: 10.0, bottom: 10.0),
                        child: InkWell(
                          child: Container(
                            height: 114.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/Icons/Chem_All_Books.svg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  getTranslated(context, 'Math_Forms_Videos'),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, youtubeGradeRoute);
                          },
                        )),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
