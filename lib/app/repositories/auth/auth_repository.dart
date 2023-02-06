import 'package:delivery_app/app/repositories/auth/auth_model.dart';

abstract class AuthRepository {
  Future<void> register(String name, String email, String password) async {}

  Future<AuthModel> login(String email, String password);
}
