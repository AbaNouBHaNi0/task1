
import 'package:flutter/material.dart';
import 'package:task1/Components.dart';
import 'package:task1/Register.dart';

import 'Constants.dart';

bool hide = true;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Color(0xFFf74269) ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('img/1.png'),
                  backgroundColor: Colors.white,
                  radius: 70,
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 90,
                    child: const Divider(
                      height: 5,
                      color: Colors.transparent,
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const TEXTINPUTE(
                            textName: 'Email',
                            icon: Icon(Icons.email),
                            type: TextInputType.emailAddress,

                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscuringCharacter: "*",
                            obscureText: hide,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.remove_red_eye_outlined),
                                onPressed: () {
                                  setState(() {
                                    if (hide == true) {
                                      hide = false;
                                    } else {
                                      hide = true;
                                    }
                                  });
                                },
                              ),
                              labelText: "Enter password",
                              //icon:  Icon(Icons.lock),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(),

                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MY_Button(height: 40, width: double.infinity, text: "Login", Fun: (){}),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const Register()),
                          );
                        },
                        child: const Text("Register now",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
