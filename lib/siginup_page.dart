import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Auth-controller.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // to get the current width of screen
    double height = MediaQuery.of(context).size.height; // to get the current height of screen
    var emailController =TextEditingController();
    var passwordController = TextEditingController();
    const images = [
      "g.png",
      "f.png",
      "t.png"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/signup.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(

                children: [
                  SizedBox(height: height*0.16,),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 50,
                    backgroundImage: AssetImage("images/profile1.png"),

                  )
                ],
              ),
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[

                    SizedBox(height: 50,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10, // assigning the width for the blur radius for the container
                              spreadRadius: 7, //used to spread the blur over the radius
                              offset: Offset(1,1), // offset is used to say the distance between x and y
                              color: Colors.grey.withOpacity(0.2), // color property is used to set the color
                            )
                          ]
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration( // input feild
                          hintText: "  Email Address",

                            contentPadding: const EdgeInsets.only(left: 5),
                            // icon: Icon(Icons.email,color: Colors.orangeAccent,),
                            enabledBorder: OutlineInputBorder( // for enabled or current outline border
                                borderRadius: BorderRadius.circular(30),  // for outline border radius
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(Icons.email,color: Colors.orangeAccent,),
                          )
                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10, // assigning the width for the blur radius for the container
                              spreadRadius: 7, //used to spread the blur over the radius
                              offset: Offset(1,1), // offset is used to say the distance between x and y
                              color: Colors.grey.withOpacity(0.2), // color property is used to set the color
                            )
                          ]
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration( // input feild
                            hintText: "  Password",

                            enabledBorder: OutlineInputBorder( // for enabled or current outline border
                                borderRadius: BorderRadius.circular(30),  // for outline border radius
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(Icons.password_outlined, color: Colors.orangeAccent,),
                            )
                        ),

                      ),
                    ),
                    SizedBox(height:20,),

                    SizedBox(height: 70,),
                    GestureDetector(
                      // onTap: (){AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                      // },
                      child: Center(
                        child: Container(

                          width: width*0.5,
                          height: height*0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage("images/loginbtn.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                          child:
                          Center(child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),)),

                        ),
                      ),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: "you already have account?",
              style: TextStyle(color: Colors.grey[500],fontSize: 20),
              children: [

                TextSpan(
                  text: " Login",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),
                    recognizer: TapGestureRecognizer()..onTap= ()=> Get.to(()=> LoginPage())

                )
              ]
            )
            ),
            SizedBox(height: height*.08,),
            RichText(text: TextSpan(
                text: "signup using one of this method ",
                style: TextStyle(color:Colors.grey[500],fontSize: 16),
            ),
            ),
            SizedBox(height: 10,),
            Wrap(
              children: List<Widget>.generate(
                3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[500],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/" + images[index]),
                        ),
                      ),
                    );

                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
