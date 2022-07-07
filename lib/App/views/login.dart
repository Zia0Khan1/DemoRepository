import 'package:demo_project/App/custom_widgets/heading_widget.dart';
import 'package:demo_project/App/custom_widgets/text_field.dart';
import 'package:demo_project/App/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            HeadingWidget(
              myText: "LoginScreen",
            ),
            CustomTextField(
              hinttext: "login",
              myIcon: Icons.email_outlined,
            ),      CustomTextField(
              hinttext: "login",
              myIcon: Icons.email_outlined,
            ),      CustomTextField(
              hinttext: "login",
              myIcon: Icons.email_outlined,
            ),
            CustomTextField(
              hinttext: "login",
              myIcon: Icons.email_outlined,
            ),
            CustomTextField(
              hinttext: "Password",
              myIcon: Icons.lock_outline_rounded,
            ),

            CustomTextField(
              hinttext: "hint-password",
              myIcon: Icons.lock_outline_rounded,
            ),

            // TextFormField(
            //   decoration: const InputDecoration(
            //     icon: Icon(
            //       Icons.mail,
            //       color: Colors.red,
            //     ),
            //     hintText: 'Enter Your Mail',
            //     // labelText: 'Name *',
            //   ),
            // ),
            // TextFormField(
            //   decoration: const InputDecoration(
            //     icon: Icon(
            //       Icons.pageview_rounded,
            //       color: Colors.yellow,
            //     ),
            //
            //     hintText: 'Enter Your Password',
            //     // labelText: 'Name *',
            //   ),
            // ),
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

            SizedBox(
              height: 25,
            ),

            _buttonRow(),
            SizedBox(
              height: 25,
            ),

            _exampleWidget("CodesFix",
                // fontColor: Colors.tealAccent
            ),
          ],
        ),
      ),
    );
  }

  _exampleWidget(String? text, {Color? fontColor}) {
    return Text(
      text!,
      style: TextStyle(
          fontSize: 25, color: fontColor==null ? Colors.orange : fontColor, fontWeight: FontWeight.bold),
    );
  }

  _buttonRow() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
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
          Expanded(
            child: Container(
              color: Colors.orange,
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
          Expanded(
            child: Container(
              color: Colors.blue,
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
