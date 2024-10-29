import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/widgets/navbar_roots.dart';
import 'package:myapp/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50), // Menambah tinggi agar sesuai dengan posisi "SKIP"
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/bedroom.png", height: 135),
                ),
                SizedBox(height: 50),
                Text(
                  "Indekos",
                  style: TextStyle(
                    color: Color(0xFFc06e4c),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Stylish Space, Comfortable",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Color(0xFFc06e4c),
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color(0xFFc06e4c),
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => NavBarRoots(),
                ));
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xFFc06e4c),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
