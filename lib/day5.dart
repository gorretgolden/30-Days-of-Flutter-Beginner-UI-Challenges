import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirty_days_beginner_ui_basics/day6.dart';

class ValidatedLoginPage extends StatefulWidget {
  const ValidatedLoginPage({super.key});

  @override
  State<ValidatedLoginPage> createState() => _ValidatedLoginPageState();
}

class _ValidatedLoginPageState extends State<ValidatedLoginPage> {
  //form key to main form state
  final _formKey = GlobalKey<FormState>();
  //text editing form field controllers to get field text
  final _emailAddressController = TextEditingController();
  final _passwordController= TextEditingController();
  bool _isObSecure = true;

//ontap detector for textspan in rich text
  late TapGestureRecognizer _tapGestureRecognizer;

   @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _handleOntap;
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void _handleOntap() {
    Get.to(const RegistrationPage());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //leaving some margin at the top
              const SizedBox(height:100.0),
              //App logo
              Center(child: Image.asset('assets/images/logo.png',height: 100.0,)),
              const SizedBox(height:20.0),
              const Text("Sign In",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height:20.0),
              //Form widget
              Form(
                //adding form key to uniquely identify the form and manage its state & validation
                key:_formKey,
                child: Column(
                children: [
                  //Email address text form field
                  TextFormField(
                    controller: _emailAddressController,
                    //adding auto validation
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration:  InputDecoration(
                      border: const  OutlineInputBorder(),
                      labelText: "Email Address",
                      prefixIcon: const Icon(Icons.email,color:Colors.orange) ,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.orange)
                      )
                    ),
                    //adding email validation
                    validator: (value) {
                      //ensuring that the email address is not null
                      if(value == null || value.isEmpty){
                        return "The email address is required";//flutter automatically handles the 
                        //display of the error messages
                      }
                      //ensuring that the email address is of a right format
                       if (!RegExp(r"^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                    },
                  ),
                      const SizedBox(height:30.0),
                  //Password form field
                  TextFormField(
                    controller: _passwordController,
                    //adding obsecurity 
                    obscureText: _isObSecure,
                      //adding auto validation
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration:  InputDecoration(
                      border: const  OutlineInputBorder(),
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock,color:Colors.orange) ,
                      suffixIcon:IconButton(
                      icon:   _isObSecure ?  const Icon(Icons.visibility):  const Icon(Icons.visibility_off),
                      onPressed:(){
                        //change value of _isObSecure
                        setState(
                          (){
                          _isObSecure = !_isObSecure;
                        }
                        );
                      }   
                      ), //adding password toggle visibility,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.orange)
                      )
                    ),
                     validator: (value) {
                      //ensuring that the password is not null
                      if(value == null || value.isEmpty){
                        return "The password is required";//flutter automatically handles the 
                        //display of the error messages
                      }
                      //ensuring that the password lenght is not short
                       if (value.length < 6){
                           
                          return "The password is too short";
                        }
                        return null;
                    },
                  ),
                    const SizedBox(height:30.0),
                  //Login button
                  GestureDetector(
                    onTap: (){
                     //ensuring that the input fields are validate before form submission
                     if(_formKey.currentState?.validate() ?? false){
                       print("Form submitted");
                     }else{
                      print("Form has errors");
                     }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 50.0),
                      decoration:BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)
                      ) ,
                      child: const Center(
                        child:  Text("Login",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                      ),
                    ),
                  ),
                     const SizedBox(height: 18.0),
                   //Adding register text
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account ? ",
                             style: const TextStyle(color:Colors.black),
                            children: [
                          TextSpan(
                              text: "Register here",
                              style: const TextStyle(color: Colors.orange),
                              //adding gesture detection on login here text
                              recognizer: _tapGestureRecognizer
                              
                              ),
                              
                        ])),
                         const SizedBox(height: 18.0),

                ],
              ))
            ],
          ),
        )
        )
     
    );
  }
}