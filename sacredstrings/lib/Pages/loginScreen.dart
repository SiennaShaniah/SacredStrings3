import 'package:flutter/material.dart';
import 'regScreen.dart'; // Importing the registration screen

// The loginScreen widget that represents the login page
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// State class for the loginScreen, manages the UI and user input
class _LoginScreenState extends State<loginScreen> {
  bool _passwordVisible = false; // Flag to toggle password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack allows stacking widgets on top of each other
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFB4BA1C), // Background color for the login screen
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Welcome Back!', // Welcome text for the login screen
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white, // White background for the login form area
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Sacred Strings', // App name or title
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB4BA1C),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      // Email input field
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      // Password input field with visibility toggle
                      obscureText:
                          !_passwordVisible, // Controls password visibility
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        suffixIcon: IconButton(
                          // Icon button to toggle password visibility
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility // Show password icon
                                : Icons.visibility_off, // Hide password icon
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible =
                                  !_passwordVisible; // Toggle password visibility
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                    Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(
                            0xFFB4BA1C), // Sign-in button background color
                      ),
                      child: const Center(
                        child: Text(
                          'SIGN IN', // Text inside the sign-in button
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Align(
                      alignment: Alignment
                          .bottomRight, // Aligns the register text to the bottom right
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Don't have an account?", // Text prompting users without an account
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          GestureDetector(
                            // Navigates to the registration screen when tapped
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RegScreen(), // Navigate to the registration screen
                                ),
                              );
                            },
                            child: const Text(
                              "Register", // Text for the registration option
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
