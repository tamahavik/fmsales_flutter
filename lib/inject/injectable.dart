import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/inject/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
void configuredDependency() => init(getIt);
