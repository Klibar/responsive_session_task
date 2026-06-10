import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responcive_task/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff30302e),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
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
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffb8b9b3),
                          size: 30.sp,
                        ),
                        suffixIcon: Icon(
                          Icons.menu_open_sharp,
                          size: 30.sp,
                          color: Color(0xffb8b9b3),
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
                  Expanded(
                    child: Container(
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: MyColors.mainColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
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
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 140.h,
                      decoration: BoxDecoration(
                        color: MyColors.secondColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 20,
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
                              'Santorini, Greece',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 31.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                            Text(
                              'Cliffside views & iconic sunsets',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
