import 'package:flutter/material.dart';

class TaskManagementPagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Management')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Digital Agency ', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('Task: ma3rd elabyd'),
            ListTile(
              title: Text('ta5zen'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            ListTile(
              title: Text('tawsel'),
              trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}