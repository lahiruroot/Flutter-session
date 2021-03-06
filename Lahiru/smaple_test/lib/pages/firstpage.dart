import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.message,
          size: 25,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://picsum.photos/id/1/600/300"))),
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_add,
                size: 25,
              ),
              title: Text(
                "Create account",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'My first App',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment(0, -0.8),
                  child: Image.asset(
                    "asset/images/login.png",
                    height: 250,
                    width: 300,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment(0, -0.8),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      cursorColor: Theme.of(context).canvasColor,
                      maxLength: 20,
                      decoration: InputDecoration(
                          labelText: "Enter your email",
                          labelStyle: TextStyle(
                            color: Colors.blue[800],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // obscureText: true, (enable password)
                      cursorColor: Theme.of(context).canvasColor,
                      maxLength: 20,
                      decoration: InputDecoration(
                          labelText: "Enter your mobile number",
                          labelStyle: TextStyle(
                            color: Colors.blue[800],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () async {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                'Login Sucessfull',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              action: SnackBarAction(
                                label: 'OK',
                                textColor: Colors.white,
                                onPressed: () {},
                              )));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
