import 'package:flutter/material.dart';
import 'package:jurysofttask/application/main/main_bloc.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/domain/home/data/screen_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return SafeArea(child: MainScreenData.mainScreenPages[state.index]);
        },
      ),
      bottomNavigationBar: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return BottomNavigationBar(
            iconSize: 30,
            unselectedItemColor: kGrey,
            selectedItemColor: kBlue,
            onTap: (value) {
              context.read<MainBloc>().add(MainEvent.onChange(index: value));
            },
            currentIndex: state.index,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.trolley), label: 'My cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        },
      ),
    );
  }
}
