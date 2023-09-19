import 'package:flutter/material.dart';
import 'package:travel_olimp/ui/authorization/auth_screen.dart';
import 'package:travel_olimp/ui/main_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 330, 0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthScreen()),
                      ),
                    },
                    child: Container(
                      width: 100,
                      height: 90,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Image.asset(
                    'assets/images/previewLogo.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    'GuideGo',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'nickname',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'email',
                          prefixIcon: Icon(Icons.mail),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Container(
                      child: TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            labelText: 'password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            )),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Создать аккаунт',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 255, 34, 130),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
