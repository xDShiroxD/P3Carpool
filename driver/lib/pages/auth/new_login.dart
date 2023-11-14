// ignore_for_file: file_names
import '../../widgets/login_form.dart';
import '../../widgets/page_tittle.dart';
import 'package:flutter/material.dart';

import '../../widgets/login_button.dart';

// ignore: must_be_immutable
class NewLogin extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var atuh;
  // ignore: no_leading_underscores_for_local_identifiers
  NewLogin(_authPageState, {super.key}) {
    atuh = _authPageState;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const PageTittle(titulo: "Iniciar Sesión"),
                  const LoginForm(),
                  LoginButton(this),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  authPageChange() {
    atuh.toggleScreens();
  }

  authAction() {
    atuh.loginStatus();
  }
}
