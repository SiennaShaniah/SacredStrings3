import 'package:flutter/material.dart';
import 'loginScreen.dart'; // Import the login screen for navigation

// The RegScreen widget represents the registration screen for user account creation
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  _RegScreenState createState() => _RegScreenState();
}

// State class for the RegScreen, responsible for managing the UI and user inputs
class _RegScreenState extends State<RegScreen> {
  bool _passwordVisible =
      false; // Flag to toggle visibility of the password field
  bool _confirmPasswordVisible =
      false; // Flag to toggle visibility of the confirm password field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack widget to overlay elements on top of each other
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(
                  0xFFB4BA1C), // Background color for the registration screen
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Create Your\nAccount', // Text to prompt users to create an account
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
                color: Colors.white, // White background for the form section
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Sacred Strings', // App name/title in the registration form
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB4BA1C),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      // Username input field
                      decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter your username',
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
                    const TextField(
                      // Phone or Gmail input field
                      decoration: InputDecoration(
                        labelText: 'Phone or Gmail',
                        hintText: 'Enter your phone or Gmail',
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
                          !_passwordVisible, // Control visibility of password
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
                          // Button to toggle visibility of the password
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible =
                                  !_passwordVisible; // Toggle visibility on button press
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      // Confirm password input field with visibility toggle
                      obscureText:
                          !_confirmPasswordVisible, // Control visibility of confirm password
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm your password',
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
                          // Button to toggle visibility of confirm password
                          icon: Icon(
                            _confirmPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _confirmPasswordVisible =
                                  !_confirmPasswordVisible; // Toggle visibility of confirm password
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
                            0xFFB4BA1C), // Registration button background color
                      ),
                      child: const Center(
                        child: Text(
                          'REGISTER', // Text inside the registration button
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
                          .bottomRight, // Aligns the text and link to bottom right
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Already have an account?", // Prompt for existing users
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          GestureDetector(
                            // Handles the gesture for signing in
                            onTap: () {
                              // Navigate to LoginScreen when clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const loginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign in", // Text for sign-in link
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
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
