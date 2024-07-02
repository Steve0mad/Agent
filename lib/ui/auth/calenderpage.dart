import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calendar')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Events'),
                subtitle: Text('15 October 2024', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('deadline m3rd elabyd'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: ListTile(
                title: Text('Events'),
                subtitle: Text('25 November 2024', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('meeting 10:30 pm'),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}