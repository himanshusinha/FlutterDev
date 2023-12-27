import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/SignUp.dart'; // Adjust the import path

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Please enter email",
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email)),
                      onChanged: (value) {
                        // Handle email changes here
                        print("Password changed: $value");
                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password ' : null;
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Please enter password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password)),
                      onChanged: (value) {
                        // Handle email changes here
                        print("Password changed: $value");
                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password ' : null;
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
