import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'assets/images/web.jpg',
      'assets/images/web1.jpg',
      'assets/images/web2.jpg',
      'assets/images/web3.jpg',
      'assets/images/web4.jpg',
      'assets/images/web5.jpg',
      'assets/images/web6.jpg',
      'assets/images/web7.jpg',
      'assets/images/web8.jpg',
      'assets/images/web9.jpg',
    ];

    final names = [
      'Your Story',
      'Alice',
      'Bob',
      'Charlie',
      'David',
      'Emma',
      'Frank',
      'Grace',
      'Hannah',
      'Igor',
    ];

    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            // First item → "Your Story" with + icon
            return Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        padding: const EdgeInsets.all(3),
                        child: const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  names[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            );
          } else {
            // Other users → with Instagram gradient border
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(3), // border thickness
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFfeda75), // yellow
                        Color(0xFFfa7e1e), // orange
                        Color(0xFFd62976), // pink
                        Color(0xFF962fbf), // purple
                        Color(0xFF4f5bd5), // blue
                      ],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(images[index]),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  names[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            );
          }
        },
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }
}
