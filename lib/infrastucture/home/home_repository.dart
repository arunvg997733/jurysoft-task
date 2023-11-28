import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jurysofttask/domain/core/api_endpoint/api_endpoint.dart';
import 'package:jurysofttask/domain/core/failure/failure.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/domain/home/home_service.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: HomeService)
class HomeRepository implements HomeService {
  @override
  Future<Either<MainFailure, List<HomeModel>>> getHomeData() async {
    try {
      final uri = Uri.parse(ApiEndPoints.home);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        List<HomeModel> newList = [];
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        for (var element in data['products']) {
          newList.add(HomeModel.fromJson(element));
        }
        return Right(newList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
