import 'package:facebook_messenger_ui/facebook_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      
      child: SafeArea(
        child: Scaffold(


          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(

              children: [

                  Container(
                      color: Colors.blue[800],
                      width: double.infinity,
                      height: 170,
                      child: Icon(Icons.facebook_outlined,color: Colors.white,size: 100,)),
                SizedBox(height: 25,),

                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next ,
                        keyboardType: TextInputType.emailAddress,
                        validator: (mail){

                          if(mail == null || mail.isEmpty){
                            return"please enter your email";
                          } else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+"
                          r"@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(mail)){
                            return "please enter valid email";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Phone number or email address",



                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return"please enter your password";

                          }
                        },

                        decoration: const InputDecoration(

                          labelText: 'Password',
                          hintText: "Password",


                        ),
                      ),

                      Container(
                        width: double.infinity,
                        child: ElevatedButton(

                          child: Text('log In'),
                          onPressed: () {
                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FaceBookScreen()));
return;
                          }


                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[700],
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      TextButton(onPressed: () {

                       // Navigator.push(
                         // context,
                          //MaterialPageRoute(builder: (context) => ForgetPassword()),
                        //);

                      }, child: const Text("Forgotten Password?",style: TextStyle(color: Colors.blue),)),
                      Text("----------------or----------------"),
                      SizedBox(height: 5,),
                      ElevatedButton(

                        child: Text('Creat New Facebook Account'),
                        onPressed: () {

                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FaceBookScreen()));
                            return;
                          }

                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),




        ),
      ),
    );
  }
}
