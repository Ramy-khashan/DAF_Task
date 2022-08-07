import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/home_page/home_page.dart';
import 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(InitialState());
  static MainPageCubit get(ctx) => BlocProvider.of<MainPageCubit>(ctx);
  List pages = const [
    HomePageScreen(),
    Text("Record"),
    Text("Explore"),
    Text("Insurance"),
    Text("Profile"),
  ];
  int selectedIndex = 0;
  onTapChange(index) {
    selectedIndex = index;
    emit(ChangeViewPageState());
  }
}
