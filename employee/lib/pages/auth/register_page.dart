import 'package:employee/widgets/selectorPais.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var auth;

  // ignore: no_leading_underscores_for_local_identifiers
  RegisterPage(_authPageState, {super.key}) {
    auth = _authPageState;
  }

  @override
  // ignore: no_logic_in_create_state
  State<RegisterPage> createState() => _RegisterPageState(auth);
}

class _RegisterPageState extends State<RegisterPage> {
  // ignore: prefer_typing_uninitialized_variables
  var localAuthPageState;

  _RegisterPageState(auth) {
    localAuthPageState = auth;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[225],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        //controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).colorScheme.secondary,
                          hintText: 'Email',
                          icon: const Icon(Icons.email),
                          iconColor: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                //password
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        //controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).colorScheme.secondary,
                          hintText: 'Password',
                          icon: const Icon(Icons.key),
                          iconColor: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        //controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).colorScheme.secondary,
                          hintText: 'Repeat Password',
                          icon: const Icon(Icons.key),
                          iconColor: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                selectorPais(),
                const SizedBox(height: 25),
                //singin
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () => localAuthPageState.loginStatus(),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                        'Create new account',
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //forgot password
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Ya tienes cuenta? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  GestureDetector(
                      onTap: localAuthPageState.toggleScreens,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold),
                      )),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
