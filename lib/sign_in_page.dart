import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 20,
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                )),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
        ),
        body: Stack(children: [
          Column(
            children: [
              const Image(
                image: AssetImage("assets/login_shape.png"),
                alignment: Alignment.centerRight,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Center(
                            child: Column(
                              children: const [
                                Text(
                                  'Welcome back',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'login to your account',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            right: -15,
                            child: Image(
                              image: AssetImage('assets/Plant.png'),
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            fillColor: const Color.fromRGBO(211, 211, 211, 0.5),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                            labelText: 'Full Name',
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            fillColor: const Color.fromRGBO(211, 211, 211, 0.5),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                            labelText: 'Password',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  onChanged: (value) {},
                                  value: true,
                                ),
                                const Text('Remember me')
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Forgot Password'))
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 80)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(61, 88, 79, 1)),
                                ),
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.only(
                                        left: 150, right: 150),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                                onPressed: () {}, child: const Text('Sign up'))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ]));
  }
}
