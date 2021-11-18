import 'package:flutter/material.dart';
import 'package:kcal_midterm/views/onboarding_page.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xff93c68b).withOpacity(1), BlendMode.multiply)),
        ),
        alignment: Alignment.center,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Text(
              'kcal',
              style: TextStyle(
                  fontFamily: 'NUDs', fontSize: 50, color: Colors.white),
            ),
            SizedBox(height: 250),
            Text('ZUAMICA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFFcfe6ca),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NUDs',
                )),
          ],
        )),
      ),
    );
  }
}
