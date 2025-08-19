// lib/screens/plants_book_screen.dart
import 'package:flutter/material.dart';

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Aquí defines 4 pestañas
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            'Medicina Natural',
            style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.question_mark),
                text: 'Question',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'People',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'Info',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Aquí debes tener 4 widgets, uno por cada pestaña
            Center(child: Text('Home Page Content')),
            Center(child: Text('Question Page Content')),
            Center(child: Text('People Page Content')),
            Center(child: Text('Info Page Content')),
          ],
        ),
      ),
    );
  }
}