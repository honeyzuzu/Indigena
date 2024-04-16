import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Plant Problem Search',
      home: PlantSearchScreen(),
    );
  }
}

class PlantSearchScreen extends StatelessWidget {
  const PlantSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {
              // Logic to change location
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Start typing a plant name...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Your Biome: Deciduous Forest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const PlantInfoCard(),
            const PlantInfoCard(),
            const PlantInfoCard(),
          ],
        ),
      ),
    );
  }
}

class PlantInfoCard extends StatelessWidget {
  const PlantInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text('Plant Name'),
        subtitle: const Text('basic description that continues with a...'),
        leading: Image.asset('path/to/your/image.png'), // replace with your image path
        trailing: const Icon(Icons.image),
      ),
    );
  }
}
