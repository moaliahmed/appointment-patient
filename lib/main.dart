import 'package:app1/service/dio_helper/dio_helper.dart';
import 'package:app1/service/sharedPreferans/sharedPreferance.dart';
import 'package:app1/src/app_root.dart';
import 'package:flutter/cupertino.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
 SharedPrefrenceHelper.init();

  runApp(AppRoot());
}