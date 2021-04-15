import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatelessWidget {
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
                                      hintText: 'Nome',
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.zero,
                                          bottomLeft: Radius.zero,
                                          topRight: Radius.zero,
                                          topLeft: Radius.zero,
                                        ),
                                      ),
                                      hintText: 'Email',
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.zero,
                                          bottomLeft: Radius.zero,
                                          topRight: Radius.zero,
                                          topLeft: Radius.zero,
                                        ),
                                      ),
                                      hintText: 'Senha',
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
                                      hintText: 'Repetir Senha',
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextButton(
                                    autofocus: false,
                                    child: Text('Cadastrar'),
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red,
                                      minimumSize: Size(400, 50),
                                    ),
                                  ),
                                  TextButton(
                                    autofocus: false,
                                    child: Text('Já tem um cadastro?'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, a, b) =>
                                              Login(),
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
