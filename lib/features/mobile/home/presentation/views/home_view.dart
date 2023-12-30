import 'package:flutter/material.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/custom_drawer.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/home_stack.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0A071E),
      drawer: Drawer(
        backgroundColor: Color(0xff0A071E),
        child: CustomDrawer(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HomeStack(),
          ],
        ),
      ),
    );
  }
}
