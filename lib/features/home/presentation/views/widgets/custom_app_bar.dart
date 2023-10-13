import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_notify_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MobileDimensions.getWidth(context).w,
      height: 40.h,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomNotifyIcon(
            icon: Icons.mode_comment_outlined,
            onPressed: (){
              Navigator.pushNamed(context, MyRoutes.messageView);
            },
            number: '10',
          ),
          SizedBox(width: 20.w,),
        ],
      ),
    );
  }
}
