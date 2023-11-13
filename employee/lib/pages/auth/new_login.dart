import 'package:employee/widgets/pageTittle.dart';
import 'package:flutter/material.dart';

import '../../widgets/LoginButton.dart';

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
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  PageTittle(titulo: "Iniciar\nSesión"),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.pink),
                  ),
                  LoginRegisterButton(this),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  authPageChange() {}
  authAction() {
    atuh.loginStatus();
  }
}
