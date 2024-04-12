import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Problem Search',
      home: PlantSearchScreen(),
    );
  }
}

class PlantSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              // Logic to change location
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
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
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Your Biome: Deciduous Forest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PlantInfoCard(),
            PlantInfoCard(),
            PlantInfoCard(),
          ],
        ),
      ),
    );
  }
}

class PlantInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Plant Name'),
        subtitle: Text('basic description that continues with a...'),
        leading: Image.asset('path/to/your/image.png'), // replace with your image path
        trailing: Icon(Icons.image),
      ),
    );
  }
}
