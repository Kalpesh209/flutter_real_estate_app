import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_real_estate_app_ui/common/color_constants.dart';
import 'package:flutter_real_estate_app_ui/custom_widgets/floating_widget.dart';
import 'package:flutter_real_estate_app_ui/custom_widgets/house_widget.dart';
import 'package:flutter_real_estate_app_ui/custom_widgets/menu_widget.dart';
import 'package:flutter_real_estate_app_ui/models/data_model.dart';
import 'package:intl/intl.dart';

import 'package:google_fonts/google_fonts.dart';

class ItemDetailScreen extends StatelessWidget {
  House house;
  List<String> imageList;
  int imgpath_index;
  ItemDetailScreen(
    this.house,
    this.imgpath_index,
    this.imageList,
  );
  final houseArray = [
    "1.416",
    "4",
    "2",
    "2",
    "3",
  ];
  final typeArray = [
    "Square foot",
    "Bedrooms",
    "Bedrooms",
    "Garage",
    "Kitchen",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final oCcy = new NumberFormat("##,##,###", "en_INR");
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstant.kWhiteColor,
      ),
    );
    return Scaffold(
      backgroundColor: ColorConstant.kWhiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingWidget(
              leadingIcon: Icons.mail,
              txt: "Message",
            ),
            FloatingWidget(
              leadingIcon: Icons.phone,
              txt: "Call",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: SizedBox(
                      height: 200.0,
                      width: screenWidth,
                      child: Carousel(
                        images: [
                          ExactAssetImage(imageList[imgpath_index]),
                          ExactAssetImage(imageList[0]),
                          ExactAssetImage(imageList[1]),
                          ExactAssetImage(imageList[2]),
                          ExactAssetImage(imageList[3]),
                          ExactAssetImage(imageList[4]),
                          ExactAssetImage(imageList[5]),
                        ],
                        showIndicator: true,
                        borderRadius: false,
                        moveIndicatorFromBottom: 180.0,
                        noRadiusForIndicator: true,
                        overlayShadow: false,
                        overlayShadowColors: Colors.white,
                        overlayShadowSize: 0.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MenuWidget(
                            iconImg: Icons.arrow_back,
                            iconColor: ColorConstant.kWhiteColor,
                            conBackColor: Colors.transparent,
                            onbtnTap: () {
                              Navigator.of(context).pop(false);
                            }),
                        MenuWidget(
                          iconImg: Icons.favorite_border,
                          iconColor: ColorConstant.kWhiteColor,
                          conBackColor: Colors.transparent,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$' + "${oCcy.format(house.amount)}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            house.address,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.grey[200],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "20 hours ago",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  "House Information",
                  style: GoogleFonts.notoSans(
                    fontSize: 20,
                    color: ColorConstant.kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: houseArray.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: HouseWidget(
                        type: typeArray[index],
                        number: houseArray[index].toString(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Flawless 2 story on a family friendly cul-de-sac in the heart of Blue Valley! Walk in to an open floor plan flooded w daylightm, formal dining private office, screened-in lanai w fireplace, TV hookup & custom heaters that overlooks the lit basketball court.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.notoSans(
                    fontSize: 15,
                    color: ColorConstant.kGreyColor,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
