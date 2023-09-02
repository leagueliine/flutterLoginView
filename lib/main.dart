import 'package:flutter/material.dart';
import 'package:my_test_app/login/botton_ui.dart';
import 'package:my_test_app/login/square_tile.dart';
import 'package:my_test_app/login/text_field.dart';

void main() {
  runApp(const TestFormFLutter());
}

class TestFormFLutter extends StatefulWidget {
  const TestFormFLutter({Key? key}) : super(key: key);

  @override
  State<TestFormFLutter> createState() => _TestFormFLutterState();
}

class _TestFormFLutterState extends State<TestFormFLutter> {
  final nameController = TextEditingController();
  final passController = TextEditingController();

  late bool _showPass = false;

  void signUserIn() {
    print({"name": nameController.text, "password": passController.text});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[400],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //logo
                const Icon(
                  Icons.account_circle_rounded,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                Text(
                  "Welcome back!",
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

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passController,
                    obscureText: _showPass ? true : false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Password",
                      suffixIcon: GestureDetector(
                          child: Icon(
                            _showPass == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey[400],
                          ),
                          onTap: () {
                            setState(() {
                              _showPass = !_showPass;
                            });
                          }),
                    ),
                  ),
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
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
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
                //
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
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
