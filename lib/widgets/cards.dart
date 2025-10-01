import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCards extends StatelessWidget {
  final String myImage;
  final String coffeeTitle;
  final String typeOfCoffee;
  final String price;
  final double rating;

  const CustomCards(
      {super.key,
      required this.coffeeTitle,
      required this.myImage,
      required this.price,
      required this.rating,
      required this.typeOfCoffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 5))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  myImage,
                  height: 120.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 120.h,
                      color: Colors.grey,
                      child: const Center(
                        child: Text('no image found'),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(8)
                    ),
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '$rating'.toString(),
                        style: TextStyle(
                            fontFamily: 'sora',
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '$coffeeTitle',
            style: TextStyle(
                fontFamily: 'sora',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            '$typeOfCoffee',
            style: TextStyle(
                fontFamily: 'sora',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8.h,
          ),
          // const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$price',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0XFFC67C4E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.add,
                  size: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
