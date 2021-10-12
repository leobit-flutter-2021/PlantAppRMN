import 'package:flutter/material.dart';
import 'package:plant_app/sign_in_page.dart';
import 'package:plant_app/sign_up_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/main_screen_plant.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height / 4),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 40),
              child: const Text(
                "The best \napp for \nyour plants",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 60),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 100),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignUpPage();
                        }),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 30),
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
                      padding: const EdgeInsets.only(left: 100, right: 100),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignInPage();
                        }),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
