import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/Colors.dart';
import 'package:iconsax/iconsax.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isActive;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // TODO: Define what happens when the card is tapped
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 17,
                color: isActive ? bgPrimary : Colors.grey,
              ),
              SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  color: isActive ? bgPrimary : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
