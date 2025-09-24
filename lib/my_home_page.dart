import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 236.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFF313131),
                          Color(0xFF111111),
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontFamily: 'sora',
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              color: Color(0xFFA4A4A4),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Text(
                                'Bilzen, Tanjungbalai',
                                style: TextStyle(
                                  fontFamily: 'sora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: Color(0xFFD8D8D8),
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Icon(
                                Icons.arrow_drop_down_circle,
                                color: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            spacing: 16,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2A2A2A),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search coffee',
                                      hintStyle: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFFA2A2A2),
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          44.0, 16.0, 0.0, 16.0),
                                    ),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Container(
                                  padding: EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC67C4E),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Icon(
                                    Icons.slow_motion_video_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Image.asset(
                            'assets/images/Banner.png',
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          TabBar(
                            // isScrollable: true,
                            indicatorColor:Colors.transparent,
                            dividerColor:Colors.transparent,
                            labelPadding: EdgeInsets.zero,
                            tabs: [
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFC67C4E),
                                    borderRadius: BorderRadius.circular(6.r),
                                  ),
                                  child: Text(
                                    'All Coffee',
                                    style: TextStyle(
                                      fontFamily: 'sora',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Tab(text: 'Espresso'),
                              Tab(text: 'Latte'),
                              Tab(text: 'Flat White'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // TabBarView for tab content
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                        child: Text('Cappuccino',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)))),
                    Center(
                        child: Text('Espresso',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)))),
                    Center(
                      child: Container(
                        width: 200.w,
                        height: 200.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                    ),
                    Center(
                        child: Text('Flat White',
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
