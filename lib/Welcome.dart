import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
   double height = MediaQuery.of(context).size.height;

   return Scaffold(

      body: Column(


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
          SizedBox(height: 70,),
          Container(

            margin: const EdgeInsets.only(left: 30),
            width: width,
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: [
                Text("Welcome",
                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 40)),
                SizedBox(height: 10,),
                Text("a@gmail",
                    style: TextStyle(color: Colors.black54,fontSize: 20)),
              ],
            ),
          ),
          SizedBox(height: 90,),
          Center(
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
              Center(child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),)),

            ),
          ),
        ],
      ),
    );
  }
}
