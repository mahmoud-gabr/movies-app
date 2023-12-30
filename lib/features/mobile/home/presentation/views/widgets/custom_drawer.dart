import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(onTap: () {}, child: const Icon(Icons.close)),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Series',
          ),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Divider(
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
              thickness: 1, // Adjust the thickness of the line
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Géneros',
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Divider(
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
              thickness: 1, // Adjust the thickness of the line
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'assets/images/logos.png',
            ),
          ),
        ],
      ),
    );
  }
}
