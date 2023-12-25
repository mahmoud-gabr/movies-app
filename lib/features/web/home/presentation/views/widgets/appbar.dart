import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 18,
          width: 294,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Movies',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                'Series',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                'Documentaries',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 198,
          height: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.search,
                size: 24,
              ),
              Icon(
                Icons.notifications_none,
                size: 24,
              ),
              SizedBox(
                width: 102,
                child: Row(
                  children: [
                    Icon(
                      Icons.person_off_outlined,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'name',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
