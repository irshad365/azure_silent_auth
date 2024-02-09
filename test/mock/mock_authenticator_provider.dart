import 'package:azure_silent_auth/authenticator/abstract/authenticator_provider.dart';
import 'dart:async';
import 'credential_test_helper.dart';

class MockAuthenticatorProvider extends AuthenticatorProvider {
  @override
  Future<void> authorize({
    String? tokenResponseString,
  }) async {
    credential = await CredentialTestHelper().mockCredential();
  }

  @override
  void close() {}

  @override
  String? getUserName() {
    return 'mockUser';
  }
}