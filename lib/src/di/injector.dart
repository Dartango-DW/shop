import 'package:http/http.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  @Register.factory(
    Client,
    name: 'client',
  )
//  @Register.factory(
//    CategoriesService,
//    from: CategoriesApiService,
//    resolvers: {
//      Client: 'client',
//    },
//  )
//  @Register.factory(CategoryBloc)
//
  void configure();

  static void inject() {
    _$Injector()..configure();
  }
}
