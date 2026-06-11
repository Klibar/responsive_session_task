import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyColors {
  static Color mainColor = Color(0xff5dc9a5);
  static Color secondColor = Color(0xff075142);
}

class CategoriesBtn extends StatelessWidget {
  const CategoriesBtn({super.key, required this.btnColor, required this.tilte});
  final Color btnColor;
  final String tilte;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Text(
          tilte,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
