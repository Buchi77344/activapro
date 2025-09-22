import 'package:activepro/layout/color.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const CustomAppBar({super.key});
 @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    
    return AppBar(
      backgroundColor: AppColors.background,
      leading: const Padding(padding: 
      EdgeInsets.all(8),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.disabledText,
      ),
      ),
      title:  Text('Hello, Onyebuchi',style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: w * 0.04
      ),),
    );
  }
}