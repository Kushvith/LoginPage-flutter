import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Welcome.dart';
import 'package:login_page/login_page.dart';

class AuthController extends GetxController{
  //this class can be every where in the file
    static AuthController instance = Get.find();
    //User object consists of name email phno...
    late Rx<User?> _user;
    FirebaseAuth auth = FirebaseAuth.instance;

    @override
    void onReady(){
        super.onReady();
        _user = Rx<User?>(auth.currentUser);
        _user.bindStream(auth.userChanges());
        ever(_user,_initialScreen);
    }
    _initialScreen(User? user){
        if(user== Null){
            print("login");
            Get.offAll(()=>LoginPage());

        }
        else{
            Get.offAll(()=>Welcome());
        }
    }
    // void register(String email,password) async{
    //     try{
    //      await   auth.createUserWithEmailAndPassword(email: email, password: password);
    //     }
    //     catch(e){
    //         Get.snackbar("about user", "user message",backgroundColor: Colors.redAccent,snackPosition: SnackPosition.BOTTOM, titleText: Text("acoount creation",style:TextStyle(color: Colors.white)),
    //
    //         messageText: Text(e.toString(),style: TextStyle(color: Colors.white),));
    //     }
    // }
    // void Login(String email,password) async{
    //     try{
    //         await auth.signInWithEmailAndPassword(email: email, password: password);
    //     }
    //     catch(e){
    //         Get.snackbar("about Login", "Login message",backgroundColor: Colors.redAccent,snackPosition: SnackPosition.BOTTOM, titleText: Text("acoount creation",style:TextStyle(color: Colors.white)),
    //
    //             messageText: Text(e.toString(),style: TextStyle(color: Colors.white),));
    //     }
    // }
    // void Logout() async
    // {   await auth.signOut();
    // }


}