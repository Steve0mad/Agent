import 'package:flutter/material.dart';

class TeamMembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sales-persons')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Team Members', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user1.png')),
              title: Text('Mina Safwat'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user2.png')),
              title: Text('Belal Magdy'),
            ),

          ],
        ),
      ),
    );
  }
}