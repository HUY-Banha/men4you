import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomProfileWidget extends StatelessWidget {
  const CustomProfileWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      margin: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Image.network(
                  'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Email: ${user.email}',
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          user.photoURL != null
              ? Image.network("${user.photoURL}")
              : Container(),
          user.displayName != null ? Text("${user.displayName}") : Container(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
