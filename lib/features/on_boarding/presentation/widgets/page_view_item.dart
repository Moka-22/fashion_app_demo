import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.subTitle,
      required this.title,
      });
  final String image;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xff464447),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  spacing: 20,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                top: 0,
                bottom: 120,
                left: 0,
                right: 0,
                child: Image.asset(
                  image,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
