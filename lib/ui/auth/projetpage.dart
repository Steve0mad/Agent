import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Project Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Digital Agency ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('In Progress', style: TextStyle(color: Colors.orange)),
            Text('Design Assigned'),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user1.png')),
              title: Text('3ekarat el4ro2'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user2.png')),
              title: Text('ma3rd elabyd'),
              trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
            ),

          ],
        ),
      ),
    );
  }
}
class TaskManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Management')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ofspace Digital Agency Website UI', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('Task: Home Page Design'),
            ListTile(
              title: Text('Design'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              title: Text('Development'),
              trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
            ),
            // Add more task details as necessary
          ],
        ),
      ),
    );
  }
}
