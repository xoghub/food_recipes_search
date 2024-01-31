import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // final String username;
  // final String email;

  const Profile({
    Key? key,
    // this.username,
    // this.email,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Profile'),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.logout),
        //       onPressed: () {
        //         // Add logout functionality here
        //       },
        //     ),
        //   ],
        // ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text(
        //         'Username: ${widget.username}',
        //       ),
        //       Text(
        //         'Email: ${widget.email}',
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
