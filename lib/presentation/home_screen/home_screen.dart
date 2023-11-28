import 'package:flutter/material.dart';
import 'package:jurysofttask/application/home/home_bloc.dart';
import 'package:jurysofttask/presentation/home_screen/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.getHomedata());
    final sizeW = MediaQuery.of(context).size.width;
    final sizeH = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ProductSliderWidget(sizeW: sizeW),
          const SliderIndicatorWidget(),
          ProductList(
            height: sizeH,
            width: sizeW,
          )
        ],
      ),
    );
  }
}
