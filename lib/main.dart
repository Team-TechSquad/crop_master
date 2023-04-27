import 'package:cropmaster/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop_Master',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: LoginPage(),    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Master'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100.0),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Crop Master',
                  style: TextStyle(
                      fontSize: 60.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(bottom: 50),
              ),
              Image.network(
                'https://imgs.search.brave.com/dy7EsRrSK8akPzJ1_OWgx35xGyLYa-O24Zqw01DcxlA/rs:fit:769:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/c3pXMWNFOExSenJP/RnlEYnBZMW5RSGFF/ayZwaWQ9QXBp',
                height: 190,
                width: 300,
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  print("clicked");
                  // Api().getCrops();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all<Size>(Size(10, 55)),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Don\'t have an account? Register here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
