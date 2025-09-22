import 'package:activepro/layout/color.dart';
import 'package:flutter/material.dart';

class SliverDemoPage extends StatelessWidget {
  const SliverDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          const SliverAppBar(
            floating: true,
            pinned: true,
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.accentGreen,
            ),
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Universal Sliver Demo"),
              
              
              
            ),
          ),

          // Box Adapter
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text("Featured Section",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),

          // Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  color: Colors.teal[100 * ((index % 8) + 1)],
                  child: Center(child: Text("Grid $index")),
                ),
                childCount: 6,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
          ),

          // List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: CircleAvatar(child: Text("$index")),
                title: Text("Post #$index"),
              ),
              childCount: 10,
            ),
          ),

          // Footer
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "You’ve reached the end 🎉",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
