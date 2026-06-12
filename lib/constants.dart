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
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Text(
          tilte,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class DesctopCategoriesBtn extends StatelessWidget {
  const DesctopCategoriesBtn({
    super.key,
    required this.btnColor,
    required this.tilte,
  });
  final Color btnColor;
  final String tilte;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(50.r),
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
          width: 150.w,
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                              size: 15,
                              color: Color(0xff478671),
                            ),
                            SizedBox(width: 5),
                            Text(
                              rate.toString(),
                              style: TextStyle(
                                color: Color(0xff478671),
                                fontSize: 25.sp,
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

class DesctopCityBox extends StatelessWidget {
  const DesctopCityBox({
    super.key,
    required this.city,
    required this.country,
    required this.bottomColor,
    required this.rate,
    required this.bgColor,
  });
  final String city;
  final String country;
  final double rate;
  final Color bottomColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 75.h,
                decoration: BoxDecoration(
                  color: bottomColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        city,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '$country - ',
                            style: TextStyle(
                              color: MyColors.mainColor,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                            ),
                          ),
                          Icon(Icons.star, size: 10, color: MyColors.mainColor),
                          Text(
                            ' ${rate.toString()}',
                            style: TextStyle(
                              color: MyColors.mainColor,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
