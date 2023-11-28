import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:jurysofttask/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configurationGetIt() async {
  getIt.init(environment: Environment.prod);
}
