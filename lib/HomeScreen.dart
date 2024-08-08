import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // List of items to display
  final List<String> items = [
    'Pakistan',
    'Canada',
    'Germany',
    'France',
    'Japan',
    'India',
    'Australia',
    'Brazil',
    'China',
    'USA'
  ];

  final Random random = Random();

  Color getRandomColor() {
    return Color.fromARGB(254,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text('List of Countries'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: getRandomColor(), // Assign a random color to each card
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                items[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You tapped on ${items[index]}'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
