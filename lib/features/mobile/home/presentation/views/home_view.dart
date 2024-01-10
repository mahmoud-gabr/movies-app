import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/custoum_botton_app.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/custom_drawer.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/home_stack.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/newest_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A071E),
      drawer: const Drawer(
        backgroundColor: Color(0xff0A071E),
        child: CustomDrawer(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HomeStack(),
            const Text(
              'Bienvenido a Movie+',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet consectetur',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            CustomBottonApp(isFilled: true, onTap: () {}, text: 'EXPLORAR'),
            const SizedBox(
              height: 31,
            ),
            const NewestListView(),
          ],
        ),
      ),
    );
  }
}
