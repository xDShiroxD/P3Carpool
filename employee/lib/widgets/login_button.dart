import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginRegisterButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var localAuth;

  LoginRegisterButton(authState, {super.key}) {
    localAuth = authState;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => localAuth.authAction(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('No tienes cuenta? ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              GestureDetector(
                  onTap: localAuth.authPageChange(),
                  child: Text(
                    'Registrar',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
