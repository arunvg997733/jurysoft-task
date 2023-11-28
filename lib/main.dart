import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurysofttask/application/cart/cart_bloc.dart';
import 'package:jurysofttask/application/home/home_bloc.dart';
import 'package:jurysofttask/application/main/main_bloc.dart';
import 'package:jurysofttask/application/product/product_bloc.dart';
import 'package:jurysofttask/domain/core/di/injectable.dart';
import 'package:jurysofttask/presentation/main_screen/main_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configurationGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
