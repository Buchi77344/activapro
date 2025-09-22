import 'package:flutter/material.dart';

class CardScroll extends StatelessWidget {
  const CardScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      {
        "color1": const Color(0xFF0F2027),
        "color2": const Color(0xFF2C5364),
        "balance": "\$4,520.75",
        "cardNumber": "**** 1234",
        "expiry": "12/27",
        "holder": "John Doe"
      },
      {
        "color1": const Color(0xFF232526),
        "color2": const Color(0xFF414345),
        "balance": "\$9,200.00",
        "cardNumber": "**** 5678",
        "expiry": "05/26",
        "holder": "Jane Smith"
      },
      {
        "color1": const Color(0xFF28313B),
        "color2": const Color(0xFF485563),
        "balance": "\$1,200.40",
        "cardNumber": "**** 9012",
        "expiry": "08/25",
        "holder": "David Lee"
      },
    ];

    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: cards.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final card = cards[index];
          return Container(
            width: 320,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [card["color1"] as Color, card["color2"] as Color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "VISA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.credit_card,
                          color: Colors.white70, size: 28),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    card["balance"] as String,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        card["cardNumber"] as String,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        card["expiry"] as String,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    card["holder"] as String,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
