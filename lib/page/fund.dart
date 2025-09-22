import 'package:activepro/layout/color.dart';
import 'package:flutter/material.dart';

class Fund extends StatelessWidget {
  const Fund({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child:CustomScrollView(
          slivers: [

            SliverAppBar(
                     backgroundColor: AppColors.background,
            ),
                       SliverToBoxAdapter(
                        child: Text('hello'),
                       )
          ],
        )
         ,),
    );
  }
}