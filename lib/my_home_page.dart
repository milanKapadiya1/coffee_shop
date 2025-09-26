import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _categories = [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
    'classic cold'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _categories.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 24.0;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 236.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
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
                    padding: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  fontFamily: 'sora',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.sp,
                                  color: const Color(0xFFA4A4A4),
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
                                      color: const Color(0xFFD8D8D8),
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  const Icon(
                                    Icons.arrow_drop_down_circle,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF2A2A2A),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: const TextField(
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
                              SizedBox(width: 16.0),
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC67C4E),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Image.asset(
                                  'assets/images/filter.png',
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Image.asset(
                            'assets/images/Banner.png',
                          ),
                        ),
                        SizedBox(height: 24.h),
                        TabBar(
                          // isScrollable: true,
                          controller: _tabController,
                          indicatorColor: Colors.transparent,
                          dividerColor: Colors.transparent,
                          labelPadding: EdgeInsets.zero,
                          padding: EdgeInsets.only(left: 24),
                          tabs: List.generate(_categories.length, (index) {
                            final isSelected = _tabController.index == index;
                            return Tab(
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0XFFC67C4E)
                                      : const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: isSelected
                                      ? null
                                      : Border.all(color: Colors.grey.shade200),
                                ),
                                child: Text(
                                  _categories[index],
                                  style: TextStyle(
                                    fontFamily: 'sora',
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                    fontSize: 14,
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xFF2F2D2C),
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Center(
                      child: Text('All Coffee Content',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                    Center(
                      child: Text('Espresso Content',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                    Center(
                      child: Text('Latte Content',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                    Center(
                      child: Text('Flat White Content',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                     Center(
                      child: Text('Flat White Content',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
