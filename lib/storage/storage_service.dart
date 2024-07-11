import 'package:get_storage/get_storage.dart';

class StorageService {
  static final box = GetStorage();

  static writeData({required String key, value}) async {
    await box.write(key, value);
  }

  static readData({required String key}) async {
    return await box.read(key);
  }

  static String userToken = "token";
  static String language = "en";
}
