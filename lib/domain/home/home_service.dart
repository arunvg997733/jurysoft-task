import 'package:dartz/dartz.dart';
import 'package:jurysofttask/domain/core/failure/failure.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
abstract class HomeService {
  Future<Either<MainFailure,List<HomeModel>>> getHomeData();
}