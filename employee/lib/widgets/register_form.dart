import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Usuario:"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.background),
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                //controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  hintText: '2023000000',
                  icon: const Icon(Icons.perm_identity_rounded),
                  iconColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text("Contraseña:"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.background,
              ),
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                //controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  hintText: '************',
                  icon: const Icon(Icons.key),
                  iconColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),

          //ignore
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text("Repetir Contraseña:"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.background),
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                //controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  hintText: '************',
                  icon: const Icon(Icons.key),
                  iconColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text("Dirección:"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.background,
              ),
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                //controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  hintText: 'Cartago',
                  icon: const Icon(Icons.home),
                  iconColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
