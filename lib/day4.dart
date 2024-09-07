import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Form(child: Column(
                children: [
                  //Email address text form field
                  TextFormField(
                    decoration:  InputDecoration(
                      border: const  OutlineInputBorder(),
                      labelText: "Email Address",
                      prefixIcon: const Icon(Icons.email,color:Colors.orange) ,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.orange)
                      )
                    ),
                  ),
                      const SizedBox(height:30.0),
                  //Password form field
                  TextFormField(
                    decoration:  InputDecoration(
                      border: const  OutlineInputBorder(),
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock,color:Colors.orange) ,
                      suffixIcon: const Icon(Icons.visibility),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.orange)
                      )
                    ),
                  ),
                    const SizedBox(height:30.0),
                  //Login button
                  GestureDetector(
                    onTap: (){
                      print("Clicked button");
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
                  )

                ],
              ))
            ],
          ),
        )
        )
     
    );
  }
}