import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:plant_app/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late double screenHeight;
  late double screenWidth;
  TextStyle defaultStyle = const TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );

  TextStyle linkStyle = TextStyle(
    color: Color.fromRGBO(61, 100, 79, 1),
  );

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Container(
        height: screenHeight - 25,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/Plant.png"),
                      alignment: Alignment.topRight,
                      scale: 1.3,
                    )),
                    child: Column(
                      children: const [
                        Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Create your new account",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        _renderTextField(Icons.person, "Full Name"),
                        _renderTextField(Icons.email, "your@email.com"),
                        _renderTextField(Icons.lock, "Password"),
                        _renderTextField(Icons.lock, "Confirm Password"),
                      ])),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50),
                    child: RichText(
                      text: TextSpan(
                        style: defaultStyle,
                        children: <TextSpan>[
                          const TextSpan(
                              text: 'By signing up, you agree to our '),
                          TextSpan(
                              text: 'Terms of Service',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Terms of Service"');
                                }),
                          const TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Privacy Policy"');
                                }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth - 50,
                    child: TextButton(
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(12),
                          primary: Colors.white,
                          backgroundColor: const Color.fromRGBO(61, 88, 79, 1),
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Already have an account?"),
                    TextButton(
                      child: const Text("Login"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const SignInPage();
                          }),
                        );
                      },
                    )
                  ])
                ],
              ),
            ]),
      ),
    );
  }

  Widget _renderTextField(IconData icon, String hintText) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          fillColor: const Color.fromRGBO(211, 211, 211, 0.5),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
          labelText: hintText,
        ),
      ),
    );
  }
}
