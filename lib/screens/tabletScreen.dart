import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responcive_task/constants.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
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
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText:
                              ('Search destinations, cities, experiences ... '),
                          hintStyle: TextStyle(
                            color: Color(0xffb8b9b3),
                            fontSize: 45.sp,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(
                              Icons.search,
                              color: Color(0xffb8b9b3),
                              size: 45.sp,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Icon(
                              Icons.menu_open_sharp,
                              size: 45.sp,
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
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width * 0.6),
                          height: 300.h,
                          decoration: BoxDecoration(
                            color: MyColors.mainColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              bottomLeft: Radius.circular(20.r),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: .end,
                              children: [
                                Container(
                                  width: 150.w,
                                  height: 40.h,
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
                    Column(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width * 0.4) - 30,
                          height: 300.h,
                          decoration: BoxDecoration(
                            color: MyColors.secondColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                Text(
                                  'TOP DESTINATION',
                                  style: TextStyle(
                                    color: MyColors.mainColor,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.1,
                                  ),
                                ),
                                Text(
                                  '''Santorini,\nGreece''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.1,
                                  ),
                                ),
                                Text(
                                  '''Clirfide viliuges, whitewched domson & goldensunocta over the Aogoan.''',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.1,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff1da076),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                      vertical: 8.h,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Explore',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 2),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
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
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55.sp,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: MyColors.secondColor,
                        letterSpacing: -1,
                        fontSize: 55.sp,
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
                      CategoriesBtn(btnColor: MyColors.mainColor, tilte: 'All'),
                      SizedBox(width: 10.w),
                      CategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Beach',
                      ),
                      SizedBox(width: 10.w),
                      CategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Mountain',
                      ),
                      SizedBox(width: 10.w),
                      CategoriesBtn(btnColor: Color(0xff262624), tilte: 'City'),
                      SizedBox(width: 10.w),
                      CategoriesBtn(
                        btnColor: Color(0xff262624),
                        tilte: 'Culture',
                      ),
                      SizedBox(width: 10.w),
                      CategoriesBtn(
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
                        fontSize: 55.sp,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: MyColors.secondColor,
                        letterSpacing: -1,
                        fontSize: 55.sp,
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
                          CityRow(
                            city: 'Kyoto',
                            country: 'Japan',
                            price: 820,
                            rate: 4.9,
                            bgColor: MyColors.mainColor,
                          ),
                          SizedBox(height: 10.h),
                          CityRow(
                            city: 'Paris',
                            country: 'France',
                            price: 950,
                            rate: 4.7,
                            bgColor: Color(0xff388ade),
                          ),
                          SizedBox(height: 10.h),
                          CityRow(
                            city: 'Amalfi Coast',
                            country: 'Italy',
                            price: 780,
                            rate: 4.8,
                            bgColor: Color(0xff388ade),
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        children: [
                          CityRow(
                            city: 'Bail',
                            country: 'Indonesia',
                            price: 640,
                            rate: 4.8,
                            bgColor: MyColors.secondColor,
                          ),
                          SizedBox(height: 10.h),
                          CityRow(
                            city: 'Iceland',
                            country: 'Europe',
                            price: 1100,
                            rate: 4.9,
                            bgColor: MyColors.secondColor,
                          ),
                          SizedBox(height: 10.h),
                          CityRow(
                            city: 'Maldives',
                            country: 'Indian Ocean',
                            price: 1500,
                            rate: 5,
                            bgColor: MyColors.mainColor,
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
