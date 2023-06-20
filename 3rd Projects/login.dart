import 'package:flutter/material.dart';
import 'package:food/view/food_screen.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/login.png"),fit:BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35, top: 100),
              child: Text("Welcome !\n  Shakib",style: TextStyle(color: Colors.white,fontSize: 33),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.5,right: 35,left: 35,),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.cyan.shade400,
                       filled: true,
                        hintText: "Email",
                        labelText: "Email",
                       
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const  SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                       fillColor: Colors.grey.shade400,
                     filled: true,
                        hintText: "Password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sign In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){
                              },
                               icon: InkWell(
                                onTap:(){
                                 
                                  Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>FoodScreen()),);
                                } ,
                              
                                child: Icon(Icons.arrow_forward,),
                                ),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "register");
                            },
                             child: Text("Sign Up",style: TextStyle(
                              decoration:TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                             ),
                             ),
                            ),
                               TextButton(
                            onPressed: (){},
                             child: Text("Forget Password",style: TextStyle(
                              decoration:TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b),
                             ),
                             ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}