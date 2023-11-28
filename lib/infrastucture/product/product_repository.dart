import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jurysofttask/domain/core/api_endpoint/api_endpoint.dart';
import 'package:jurysofttask/domain/core/failure/failure.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/domain/home/product/product_service.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ProductService)
class ProductRepository implements ProductService {
  @override
  Future<Either<MainFailure, HomeModel>> getProduct(
      {required String id}) async {
    try {
      final uri = Uri.parse('${ApiEndPoints.product}$id');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        return Right(HomeModel.fromJson(data));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
