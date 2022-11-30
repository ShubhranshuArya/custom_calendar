import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtime_innovations_assignment/constants/colors.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonTitle;
  final Color btnColor;
  final Color txtColor;
  final double txtSize;
  final double btnHeight;
  final FontWeight fontWeight;
  final double borderRadius;
  const CustomTextButton({
    Key? key,
    required this.buttonTitle,
    this.btnColor = bluePrimary,
    this.txtColor = Colors.white,
    this.txtSize = 16,
    this.btnHeight = 50,
    this.fontWeight = FontWeight.w500,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: btnColor,
      ),
      child: Center(
        child: Text(
          buttonTitle,
          style: GoogleFonts.roboto(
            fontSize: txtSize.sp,
            color: txtColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
