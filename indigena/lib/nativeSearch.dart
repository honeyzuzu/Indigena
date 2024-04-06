import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Plant Check',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NativeSearchPage(),
    );
  }
}

class NativeSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Is it Native?'),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              // Implement location change
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Start typing a plant name...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ListTile(
              title: Text('Your Biome: Deciduous Forest'),
              leading: Icon(Icons.filter_vintage),
            ),
            _buildPlantCard('Plant Name', 'Native', null),
            _buildPlantCard('Plant Name', 'Non-native', ['Alternative 1', 'Alternative 2']),
            _buildPlantCard('Plant Name', 'Invasive', ['Alternative 1', 'Alternative 2']),
          ],
        ),
      ),
    );
  }

  Widget _buildPlantCard(String name, String type, List<String>? alternatives) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle: Text('Type: $type'),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[300],
            // You should add your image here. Placeholder for now.
            child: Icon(Icons.image, size: 100),
          ),
          if (alternatives != null) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Alternatives:', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: alternatives.map((a) => Text('• $a')).toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
