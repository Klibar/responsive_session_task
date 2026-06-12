import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responcive_task/constants.dart';

class DesctopScreen extends StatefulWidget {
  const DesctopScreen({super.key});

  @override
  State<DesctopScreen> createState() => _DesctopScreen();
}

class _DesctopScreen extends State<DesctopScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff30302e),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Text(
                      'Wandr',
                      style: TextStyle(
                        color: MyColors.secondColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText:
                              ('Search destinations, cities, experiences ... '),
                          hintStyle: TextStyle(
                            color: Color(0xffb8b9b3),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(
                              Icons.search,
                              color: Color(0xffb8b9b3),
                              size: 30.sp,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(
                              Icons.menu_open_sharp,
                              size: 30.sp,
                              color: Color(0xffb8b9b3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(
                              color: Color(0xFF444442),
                              width: 4.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person, color: MyColors.mainColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: .start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: MyColors.mainColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    topRight: Radius.circular(20.r),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: .end,
                                    children: [
                                      Container(
                                        width: 140.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.r),
                                          ),
                                          color: Color(0xff9de1ca),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: .center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: MyColors.secondColor,
                                              size: 20,
                                            ),
                                            SizedBox(width: 3.w),
                                            Text(
                                              'Featured',
                                              style: TextStyle(
                                                color: MyColors.secondColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                decoration: BoxDecoration(
                                  color: MyColors.secondColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.r),
                                    bottomRight: Radius.circular(20.r),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 5,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'TOP DESTINATION',
                                        style: TextStyle(
                                          color: MyColors.mainColor,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.1,
                                        ),
                                      ),
                                      Text(
                                        'Santorini, Greece',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.1,
                                        ),
                                      ),
                                      Text(
                                        'Cliffside views & iconic sunsets',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: Column(
                        children: [
                          DesctopCityBox(
                            city: 'Kyoto',
                            country: 'Japan',
                            bottomColor: MyColors.secondColor,
                            rate: 4.9,
                            bgColor: MyColors.mainColor,
                          ),
                          SizedBox(height: 10.h),
                          DesctopCityBox(
                            city: 'Maldives',
                            country: 'Indian Ocean',
                            bottomColor: MyColors.secondColor,
                            rate: 5,
                            bgColor: MyColors.mainColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: MyColors.secondColor,
                        letterSpacing: -1,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DesctopCategoriesBtn(
                        btnColor: MyColors.mainColor,
                        tilte: 'All',
                      ),
                      SizedBox(width: 20.w),
                      DesctopCategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Beach',
                      ),
                      SizedBox(width: 20.w),
                      DesctopCategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Mountain',
                      ),
                      SizedBox(width: 20.w),
                      DesctopCategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'City',
                      ),
                      SizedBox(width: 20.w),
                      DesctopCategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Culture',
                      ),
                      SizedBox(width: 20.w),
                      DesctopCategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Nature',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: MyColors.secondColor,
                        letterSpacing: -1,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          DesctopCityBox(
                            city: 'Bail',
                            country: 'Indonesia',
                            rate: 4.8,
                            bgColor: MyColors.secondColor,
                            bottomColor: Color(0xff262624),
                          ),
                          SizedBox(height: 20.h),
                          DesctopCityBox(
                            city: 'Amalfi Coast',
                            country: 'Italy',
                            rate: 4.8,
                            bgColor: Color(0xff388ade),
                            bottomColor: Color(0xff262624),
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        children: [
                          DesctopCityBox(
                            city: 'Paris',
                            country: 'France',
                            rate: 4.7,
                            bgColor: Color(0xff388ade),
                            bottomColor: Color(0xff262624),
                          ),
                          SizedBox(height: 20.h),
                          DesctopCityBox(
                            city: 'Iceland',
                            country: 'Europe',
                            rate: 4.9,
                            bgColor: MyColors.secondColor,
                            bottomColor: Color(0xff262624),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        children: [
                          DesctopCityBox(
                            city: 'Machu Picchu',
                            country: 'Peru',
                            rate: 4.9,
                            bgColor: MyColors.secondColor,
                            bottomColor: Color(0xff262624),
                          ),
                          SizedBox(height: 20.h),
                          DesctopCityBox(
                            city: 'Maldives',
                            country: 'Indian Ocean',
                            rate: 5,
                            bgColor: MyColors.mainColor,
                            bottomColor: Color(0xff262624),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
