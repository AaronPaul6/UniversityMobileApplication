import 'package:arya_kti/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:arya_kti/components/custom_buttons.dart';

import '../login_screen/login_screen.dart';
class signup extends StatefulWidget {
  static String routeName = 'signup';

  @override
  _signup createState() => _signup();
}

class _signup extends State<signup> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signUp() async{
    if (passwordConfirmed()){
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: _emailController.text.trim(), 
       password: _passwordController.text.trim(),);
       Navigator.of(context).pushNamed('/');
    }
    
  }

 bool passwordConfirmed(){
  if (_passwordController.text.trim() == _confirmpasswordController.text.trim()) {
    return true;
  }else{
    return false;
  }
 }
  
@override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
  }

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 35.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Text('SIGNUP'),
                      
                    ],
                  ),
                  // Image.asset(
                  //   'assets/images/temp.jpg',
                  //   height: 100.h,
                  //   width: 50.w,
                  // ),
                  // SizedBox(
                  //   height: kDefaultPadding / 2,
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 6.w, right: 6.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        SizedBox(
                          height: 40,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF345FB4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Email Address',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),

                         SizedBox(
                          height: 35,
                        ),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF345FB4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Password',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),

                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 35,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF345FB4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextField(
                                controller: _confirmpasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),

                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 45,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            onTap: signUp,
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFF345FB4)),
                              child: Center(child:
                              Text('Sign Up',)),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 60,
                        ),

                        Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already Have An Account? ',
                                style: TextStyle(color: Colors.black, fontSize: 19)),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        DefaultButton(
                          //signup
                          onPress: () {
                            // Navigator.pushNamed(context, signup.routeName);
                            // Navigator.pushNamed(context, 'signup');
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => new LoginScreen())
                              );
                          },
                          title: 'Sign In',
                          iconData: Icons.person_add,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  }






