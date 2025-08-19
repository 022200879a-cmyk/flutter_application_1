import 'package:flutter/material.dart';

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: Text(
            'Medicina Natural',
            style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
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
            // Pantallas de las pestañas
            Center(child: Text('Home Page')),
            Center(child: Text('Question Page')),
            Center(child: Text('People Page')),
            Center(child: Text('Info Page')),
          ],
        ),
      ),
    );
  }
}