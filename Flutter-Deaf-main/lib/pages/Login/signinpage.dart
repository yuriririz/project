import 'package:flutter/material.dart';
 
void main() => runApp(const Signinpage());
 
class Signinpage extends StatelessWidget {
  const Signinpage({Key? key}) : super(key: key);
 
  static const String _title = 'Sample App';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 194, 0),
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
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[




                //noneText
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20),
                )),
            
          //Text button
          Container(
       
       child: Column(
        children: [

          Container(
            child: Row(
              children: [
                // sign in button 

                Row(          
              children: <Widget>[
                  TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  onPressed: () {
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
              
                // sign un button
                Row(
              children: <Widget>[
                  TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 128, 127, 127)),
                  ),
                  onPressed: () {
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),

              ],
            ),
          )
        ],
       ),
      ),


                //Text Get started by creating an account below.
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Get started by creating an account below.',
                  style: TextStyle(fontSize: 10),
                )),
                
                


                //Textfield username
              Theme(
                data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              //Text None
            TextButton(
              onPressed: () {
              },
              child: const Text('',),
            ),

            //Textfield Password
            Theme(
                data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),


            //Text None
            TextButton(
              onPressed: () {
              },
              child: const Text('',),
            ),


            //Button Login
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(290, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF277BC0) ,
                )
                )
            ),
            
          ],
        ));
  }
}
