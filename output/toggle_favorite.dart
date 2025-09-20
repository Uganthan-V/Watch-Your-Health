 
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants.dart';

class ToggleFavorite {
  Future<bool> call(String id) async {
    final sp = await SharedPreferences.getInstance();
    final key = '${AppConstants.favoritesPrefix}$id';
    final current = sp.getBool(key) ?? false;
    await sp.setBool(key, !current);
    return !current;
  }
}
