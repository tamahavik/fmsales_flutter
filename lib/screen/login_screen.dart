import 'package:flutter/material.dart';
import 'package:ufi/components/background.dart';
import 'package:ufi/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hideText = true;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Sign in as Employee",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'NPK/NPO',
              hintStyle: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            obscureText: _hideText,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(_hideText
                    ? Icons.visibility_rounded
                    : Icons.visibility_off),
                color: Colors.black45,
                onPressed: () {
                  setState(() {
                    _hideText = !_hideText;
                  });
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomeScreen()),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF10B0E6),
              ),
              child: Text('SIGN IN'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Text(
                'v 3.0.0',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
