import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key, required this.userName});
final String userName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, $userName',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "Let's go shopping",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                    ),
                    Positioned(
                      right: 8,
                      top: 10,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
