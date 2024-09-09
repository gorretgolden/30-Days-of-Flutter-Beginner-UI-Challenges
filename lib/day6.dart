import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirty_days_beginner_ui_basics/day5.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //password visibility state property
  bool _isObsecure = true;
  //Adding text editing controllers
  final _emailAddressController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  //ontap detector for textspan in rich text
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _handleOntap;
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void _handleOntap() {
    Get.to(const ValidatedLoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0), //padding left,right,top & bottom
        child: SafeArea(
          child: SingleChildScrollView(
            //enables its children to scroll
            child: Column(
              //layout to allow children widgets to be aligned vertically
              children: [
                //margin/spacing at the top
                const SizedBox(height: 20.0),
                //App logo
                Center(
                    child: Image.asset(
                  'assets/images/logo.png',
                  height: 100.0,
                )),
                const Text(
                  "Create a new account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),

                //form widget for registration
                Form(
                    child: Column(
                  children: [
                    //Username text form field
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Username",
                          prefixIcon: const Icon(Icons.account_box,
                              color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  const BorderSide(color: Colors.orange))),
                    ),
                    const SizedBox(height: 30.0),
                    //Email address text form field
                    TextFormField(
                      controller: _emailAddressController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Email Address",
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  const BorderSide(color: Colors.orange))),
                    ),
                    const SizedBox(height: 30.0),
                    //Phone number text form field
                    TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Phone number",
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  const BorderSide(color: Colors.orange))),
                    ),
                    const SizedBox(height: 30.0),
                    //Password form field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _isObsecure,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Password",
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.orange),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                              icon: _isObsecure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  const BorderSide(color: Colors.orange))),
                    ),
                    const SizedBox(height: 30.0),
                    //Confirm Password form field
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _isObsecure,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Confirm Password",
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.orange),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                              icon: _isObsecure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  const BorderSide(color: Colors.orange))),
                    ),
                    const SizedBox(height: 30.0),

                    //Login button
                    GestureDetector(
                      onTap: () {
                        print("Clicked button");
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 50.0),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18.0),
                    //Adding login text
                    RichText(
                        text: TextSpan(
                            text: "Already have an account ? ",
                            style: const TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: "Login here",
                              style: const TextStyle(color: Colors.orange),
                              //adding gesture detection on login here text
                              recognizer: _tapGestureRecognizer),
                        ])),
                    const SizedBox(height: 18.0),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
