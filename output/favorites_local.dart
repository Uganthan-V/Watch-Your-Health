 
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants.dart' as c;

class FavoritesLocal {
  Future<bool> getFavorite(String id) async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool('${c.AppConstants.favoritesPrefix}$id') ?? false;
  }

  Future<void> setFavorite(String id, bool val) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool('${c.AppConstants.favoritesPrefix}$id', val);
  }
}
