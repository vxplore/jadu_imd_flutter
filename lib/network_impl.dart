import 'network.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class NetworkImpl extends Network {
  SharedPreferences sharedPreferences;

  NetworkImpl(this.sharedPreferences);
}