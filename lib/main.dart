import 'package:flutter/material.dart';
import 'package:my_test_app/login/botton_ui.dart';
import 'package:my_test_app/login/square_tile.dart';
import 'package:my_test_app/login/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final passController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                Text(
                  "Welcome back, Happy hacking!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                //welcome back, happt hacking
                const SizedBox(
                  height: 25,
                ),

                //username Texfield
                TextFieldUI(
                  controller: nameController,
                  hintText: "Username",
                  obscureText: false,
                ),
                //email textfield
                const SizedBox(
                  height: 25,
                ),

                TextFieldUI(
                  controller: passController,
                  hintText: "Password",
                  obscureText: true,
                ),
                //forgot password
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password ?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //sign in button
                ButtonUI(
                  onTap: signUserIn,
                ),
                // or continue with gooogle
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 8,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 8.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTileUI(
                      imagePath: "lib/images/googleButton.png",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SquareTileUI(
                      imagePath: "lib/images/apple.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                //apple sign button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member ?",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                //not a member? register now!
              ],
            ),
          ),
        ),
      ),
    );
  }
}
