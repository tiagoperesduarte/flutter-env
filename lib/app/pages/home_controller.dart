import 'package:flutterenv/app/config/env.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  Future<String> getApiUrl() async {
    await Future.delayed(Duration(seconds: 5));

    return Env.get('api_url');
  }
}
