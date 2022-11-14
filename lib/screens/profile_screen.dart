import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item ${index + 1}'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.edit),
          onTap: () {
            debugPrint('$index on click');
          },
        );
      },
    );
  }
}
