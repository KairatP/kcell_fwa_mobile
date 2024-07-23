import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kcell_fwa_mobile/dependencies/auth_dio.dart';
import 'package:kcell_fwa_mobile/model/token_model.dart';
import 'package:kcell_fwa_mobile/model/user_model.dart';

abstract class AuthService {
  Future<TokenModel> authorize(String login, String password);
}

class AuthServiceImplement extends AuthService {
  AuthServiceImplement({required AuthDio brDio}) {
    dio = brDio.dio;
  }
  late final Dio dio;

  final Box tokensBox = Hive.box('tokens');
  final Box userBox = Hive.box('user');

  @override
  Future<TokenModel> authorize(String login, String password) async {
    try {
      Response response = await dio.post(
        'login',
        queryParameters: {
          'login': login,
          'password': password,
        },
      );
      TokenModel tokensModel = TokenModel.fromJson(response.data);
      UserModel userModel = UserModel.fromJson(response.data['user']);
      tokensBox.put('access', tokensModel.accessToken);
      userBox.put('id', userModel.id);
      userBox.put('login', userModel.login);
      userBox.put('created_at', userModel.createdAt);
      userBox.put('updated_at', userModel.updatedAt);
      userBox.put('username', userModel.username);
      userBox.put('position', userModel.position);
      userBox.put('phone', userModel.phone);
      userBox.put('email', userModel.email);

      return tokensModel;
    } catch (e) {
      rethrow;
    }
  }
}
