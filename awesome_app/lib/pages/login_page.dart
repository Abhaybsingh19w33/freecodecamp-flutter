import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName = "/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/day.png",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (s) {},
                            decoration: const InputDecoration(
                              hintText: "Enter email",
                              labelText: "Username",
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController,
                            validator: (s) {},
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // formKey.currentState.validate();
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const HomePage()) );

                              // some simple way to pass the data without passing it through constructur
                              Navigator.pushNamed(context, HomePage.routeName);
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow, // background
                              // onSurface: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
