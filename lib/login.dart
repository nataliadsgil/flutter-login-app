import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'PlayTalk',
                            style: TextStyle(
                              fontFamily: 'Robot',
                              fontSize: 45,
                              color: const Color(0xff555555),
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.zero,
                                          bottomLeft: Radius.zero,
                                          topRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                        ),
                                      ),
                                      hintText: 'Email',
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),
                                          topRight: Radius.zero,
                                          topLeft: Radius.zero,
                                        ),
                                      ),
                                      hintText: 'Senha',
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextButton(
                                    autofocus: false,
                                    child: Text('Entrar'),
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red,
                                      minimumSize: Size(400, 50),
                                    ),
                                  ),
                                  TextButton(
                                    autofocus: false,
                                    child: Text('Ainda não se cadastrou?'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, a, b) =>
                                              Register(),
                                        ),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      primary: const Color(0xff555555),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
