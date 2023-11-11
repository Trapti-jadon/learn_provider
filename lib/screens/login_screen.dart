import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
  
 
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();
var Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            SizedBox(
              height: 20,
            ),
             TextFormField(
              controller: Password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: (){
              authProvider.login(email.text.toString(), Password.text.toString());
            }, child: authProvider.loading ? CircularProgressIndicator(color: Colors.white,) : Text("Login"))
          ],
        ),
      ),
    );
  }
}