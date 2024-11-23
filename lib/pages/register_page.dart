import 'package:flutter/material.dart';
import 'package:green_space_app/components/my_textfield.dart';
import 'package:green_space_app/components/my_button.dart';
class RegisterPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController accountController = TextEditingController();



  RegisterPage({super.key});
  void register(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                // logo
                Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(
                    height: 25),
                //app name
                const Text("Green Space",
                  style:TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                // email text field
                MyTextField(
                  hintText: "Email...",
                  obscureText: false,
                  controller: emailController,

                ),
                // Password text field
                const SizedBox(height: 10),

                MyTextField(hintText:"Password...",
                  obscureText: true,
                  controller: passwordController,

                ),
                const SizedBox(height:10),
                // forgot password),
                const SizedBox(height:25),
                MyButton(
                  text: "Register",
                  onTap: register,
                ),

              ],
            )
        )
    );
  }
}