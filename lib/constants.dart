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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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

class CityRow extends StatelessWidget {
  const CityRow({
    super.key,
    required this.city,
    required this.country,
    required this.price,
    required this.rate,
    required this.bgColor,
  });
  final String city;
  final String country;
  final double rate;
  final int price;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              topLeft: Radius.circular(15.r),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: Color(0xff262624),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    city,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    country,
                    style: TextStyle(
                      color: const Color(0x85FFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 23,
                              color: Color(0xff478671),
                            ),
                            SizedBox(width: 5),
                            Text(
                              rate.toString(),
                              style: TextStyle(
                                color: Color(0xff478671),
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$${price.toString()}',
                          style: TextStyle(
                            color: Color(0xB3FFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
