import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'),),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Card(
              child: ListTile(
                title: Text('Total Projects'),
                subtitle: Text('26'),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('41% Done'),
                    Text('23% In Progress'),
                    Text('35% Pending'),
                  ],
                ),
              ),
            ),

            Card(
              child: ListTile(
                title: Text('Pending Projects'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3ekarat el4ro2 - 4 days left'),
                    Text('m3rd elabyd - 7 days left'),
                  ],
                ),
              ),
            ),

            Card(
              child: ListTile(
                title: Text('Recent Files'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Example.txt'),
                    Text('Design.pdf'),
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