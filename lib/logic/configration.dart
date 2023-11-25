import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt config = GetIt.instance;

getData() async {
  config.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
}
