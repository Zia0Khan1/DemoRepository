import 'package:demo_project/App/custom_widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(


        children: [
     HeadingWidget(
       myText: "SignUpScreen",
     ),


          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(
                Icons.mail,
                color: Colors.red,
              ),
              hintText: 'Enter Your Mail',
              // labelText: 'Name *',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(
                Icons.pageview_rounded,
                color: Colors.yellow,
              ),
              hintText: 'Enter Your Password',
              // labelText: 'Name *',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(
                Icons.pageview_rounded,
                color: Colors.yellow,
              ),
              hintText: 'Confirm Your Password',
              // labelText: 'Name *',
            ),
          ),

          Center(
            child: Container(
              color: Colors.red,
              height: 50,
              width: 100,
              child: MaterialButton(
                child: const Center(child: Text('SignUp')),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),

        ],

      ),
    );
  }
}
