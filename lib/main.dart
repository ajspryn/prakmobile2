import 'package:flutter/material.dart';
import 'package:flutter_application_5/profilepage.dart';
import 'package:flutter_application_5/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo...'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilPage()));
            },
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://source.unsplash.com/1920x1080/?Photography'),
                      )),
                  child: Center(
                    child: Text(
                      'Adji Supriyono Gallery',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://source.unsplash.com/1080x720/?Portrait'),
                        )),
                    child: Center(
                      child: Text(
                        'Potrait',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: NetworkImage('https://source.unsplash.com/1080x720/?lanscape'),
                        )),
                    child: Center(
                      child: Text(
                        'Lanscape',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
