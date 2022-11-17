import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../common/curve.dart';
import '../helper/firebasde_auth_helper.dart';

class DashBord extends StatefulWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    User? data = ModalRoute.of(context)!.settings.arguments as User?;

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffF5820D),
        title: const Text("Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuthHelper.firebaseAuthHelper.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('home_page', (route) => false);
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: (data!.photoURL == null)
                  ? NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOc9VDs02ZrmIC7pS3WzBTvXl8UrI3jwAOVQ&usqp=CAU")
                  : NetworkImage("${data.photoURL}"),
              //     ? NetworkImage("${data!.photoURL}")
              //       : NetworkImage(
              //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOc9VDs02ZrmIC7pS3WzBTvXl8UrI3jwAOVQ&usqp=CAU"),
              //
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (data.displayName != null)
                    ? Text(
                        "Name :- ${data.displayName}",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    : Text(
                        "Uid :- ${data.uid}",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                const SizedBox(
                  height: 20,
                ),
                (data.email != null)
                    ? Text(
                        "Email :- ${data.email}",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      )
                    : Text(
                        "Email :-  --",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome ${data!.email}",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
