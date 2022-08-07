import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/main_page_cubit/main_page_cubit.dart';
import '../../cubit/main_page_cubit/main_page_state.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) {
          final controller = MainPageCubit.get(context);

          return SafeArea(
            child: Scaffold(
              body: Center(child: controller.pages[controller.selectedIndex],),
              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.folder_shared,
                      ),
                      label: "Record"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.explore,
                      ),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.health_and_safety_sharp,
                      ),
                      label: "Insurance"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: "Profile"),
                ],
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                currentIndex: controller.selectedIndex,
                onTap: controller.onTapChange,
              ),
            ),
          );
        },
      ),
    );
  }
}
