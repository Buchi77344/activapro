import 'package:activepro/layout/color.dart';
import 'package:flutter/material.dart';

class Avater extends StatelessWidget {
  const Avater({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [ {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
    {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
    {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
    {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
    {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
    {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
     {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    },
     {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    }, {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    }, {
      "iphone": "eope",
      "web": "eope",
      "rap": "eope",
    }
    ];
   return SizedBox(
    height: 60,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: images.length,
      separatorBuilder: (context,index) => const SizedBox(width: 16,),
      itemBuilder: (context, index) {
        final image = images[index];
        return Container(
         height: 60,
         width: 70,
         decoration: BoxDecoration(
          color: AppColors.disabledText,
          borderRadius: BorderRadius.circular(100)
         ),
         child: Center(
           child: Text(
            image["iphone"] as String,
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white
            ),
           ),
         ) ,
        );
      } ),
   );
  }
}  