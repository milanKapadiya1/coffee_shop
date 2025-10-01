import 'package:coffeeshop/widgets/coffee_details_model.dart';
import 'package:coffeeshop/widgets/coffee_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _categoriesOfCoffee = [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
    'classic cold'
  ];

  final List<List<Coffee>> allDataListOfCoffees = [
    allCoffeeItems,
    machiatoItems,
    latteItems,
    americanoItems,
    coldItems,
  ];

  final PageController _pageController = PageController();
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  @override
  void dispose() {
    _pageController.dispose();
    _selectedIndex.dispose();
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
                Padding(
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
                            const SizedBox(width: 16.0),
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            ValueListenableBuilder<int>(
              valueListenable: _selectedIndex,
              builder: (context, selectedIndex, child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: horizontalPadding),
                      ...List.generate(_categoriesOfCoffee.length, (index) {
                        final isSelected = selectedIndex == index;
                        return GestureDetector(
                          onTap: () {
                            _selectedIndex.value = index;
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 16.0),
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
                              _categoriesOfCoffee[index],
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
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _selectedIndex.value = index;
                  },
                  children: List.generate(_categoriesOfCoffee.length, (index) {
                    // final currentData = allDataListOfCoffees[index];
                    return CoffeeGrid(
                        items: allDataListOfCoffees[index],
                        horizontalPadding: horizontalPadding);
                  })),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0XFFC67C4E),
          unselectedItemColor: const Color(0xFFA2A2A2),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
        ),
      ),
    );
  }
}
