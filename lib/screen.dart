import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 221, 227, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/lofmt.png'),
            Image.asset('assets/images/ppl.png'),
            Text('Welcome to FineMe!',
              style: TextStyle(color:Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'Gudea',),
            ),
            Text('One Touch. Pay Everything',
              style: TextStyle(
                color:Colors.black87,
                fontWeight: FontWeight.normal,
                fontSize: 15.0,
                fontFamily: 'Gudea',),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: Text('Sign in',
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: 'Gudea',
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
              textColor: Colors.red,
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign up',
                style: TextStyle(
                  color:Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: 'Gudea',
                ),
              ),
            ),
            Text('By continue this, You agree to our ', ),
            Text('Terms & our Privacy Policy',
              style: TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                fontFamily: 'Gudea',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(254, 221, 227, 1),
        //appBar: AppBar(),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidePassword = true;

  void _togglePasswordVisibility(){
    setState((){
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Gudea',),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10,10,10,60),
                child: const Text(
                  'Sign in to your registered account',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                    fontFamily: 'Gudea',),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your email address here',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: TextField(
                obscureText: _isHidePassword,
                autofocus: false,
                controller: passwordController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password here',
                  suffixIcon: GestureDetector(
                    onTap: (){
                      _togglePasswordVisibility();
                    },
                    child: Icon(
                      _isHidePassword ? Icons.visibility_off:
                    Icons.visibility,
                    color: _isHidePassword ? Colors.grey: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(150, 10, 150, 2),
                child: ElevatedButton(
                  child: const Text('Sign in'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                  fontFamily: 'Gudea',),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10,30,10,60),
                child: const Text(
                  'or',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'Gudea',),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/emailt.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/googlet.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/fbt.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/applet.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: 'Gudea',),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(254, 221, 227, 1),
        //appBar: AppBar(),
        body: const MeStatefulWidget(),
      ),
    );
  }
}

class MeStatefulWidget extends StatefulWidget {
  const MeStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MeStatefulWidget> createState() => _MeStatefulWidgetState();
}

class _MeStatefulWidgetState extends State<MeStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidePassword = true;

  void _togglePasswordVisibility(){
    setState((){
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hi,',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Gudea',),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10,10,10,60),
                child: const Text(
                  "Let's create a new account!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                    fontFamily: 'Gudea',),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your email address here',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: TextField(
                obscureText: _isHidePassword,
                autofocus: false,
                controller: passwordController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password here',
                  suffixIcon: GestureDetector(
                    onTap: (){
                      _togglePasswordVisibility();
                    },
                    child: Icon(
                      _isHidePassword ? Icons.visibility_off:
                      Icons.visibility,
                      color: _isHidePassword ? Colors.grey: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(150, 10, 150, 2),
                child: ElevatedButton(
                  child: const Text('Sign Up'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10,70,10,60),
                child: const Text(
                  'with',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'Gudea',),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/emailt.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/googlet.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/fbt.png',
                          width: 90.0, height: 90.0),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/applet.png',
                          width: 90.0, height: 150.0),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const Text("Already have an account?"),
                TextButton(
                  child:Text('Sign in',
                    style: TextStyle(
                      color:Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: 'Gudea',
                    ),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
