import 'package:demo_project/App/custom_widgets/heading_widget.dart';
import 'package:demo_project/App/custom_widgets/text_field.dart';
import 'package:demo_project/App/views/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
       HeadingWidget(
         myText: "SplashScreen",

       ),
            Text("\$123456",style: TextStyle(fontSize: 85),),

            CustomTextField(
              hinttext: "Hello world",
              myIcon: Icons.done,


            ),

            const SizedBox(height: 15,),

            Center(
              child: Container(
                color: Colors.red,
                height: 50,
                width: 100,
                child: MaterialButton(
                  child: const Center(child: Text('Splash')),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
