import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For using SystemUiOverlayStyle

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the status bar style
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Plant Problem Search',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlantSearchScreen(),
    );
  }
}

class PlantSearchScreen extends StatelessWidget {
  const PlantSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffefebe7).withOpacity(0.7),
        leading: IconButton(
          icon: Icon(Icons.location_on, color: Colors.black),
          onPressed: () {
            // Logic to change location
          },
        ),
        actions: [],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Problem Search',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffefebe7).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Start typing a plant name...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Your Biome: Deciduous Forest',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Number of plants you want to show, can be dynamic
                itemBuilder: (context, index) {
                  return PlantInfoCard();
                },
              ),
            ),
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
    return Container( 
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xff406767),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        title: Text('Plant Name', style: TextStyle(fontWeight: FontWeight.bold, color:  const Color(0xffefebe7))),
        subtitle: Text('basic description that continues with a...', style: TextStyle(color:  const Color(0xffefebe7))),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/images/temperatedeciduousforest1.png', width: 100), // Use your own image path
        ),
      ),
    );
  }
}
