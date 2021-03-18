import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app_ui/common/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';


class HouseWidget extends StatelessWidget {
  final String number;
  final String type;
  HouseWidget({
    this.number,
    this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              18.0,
            ),
            color: ColorConstant.kWhiteColor,
            border: Border.all(color: Colors.grey[300]),
          ),
          child: Center(
            child: Text(
              number,
              style: GoogleFonts.notoSans(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          type,
          style: GoogleFonts.notoSans(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
