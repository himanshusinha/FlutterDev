import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
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
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Please enter mobile",
                          labelText: "Mobile",
                          prefixIcon: Icon(Icons.mobile_friendly_sharp)),
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
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
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
