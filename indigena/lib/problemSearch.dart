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
   final TextEditingController _searchController = TextEditingController();

   PlantSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                      backgroundColor: const Color(0xff406767),

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff406767),
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
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color:  const Color(0xffefebe7)),
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
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: 'Start typing...',
                                hintStyle: const TextStyle(color: Color(0xff406767)),

                                suffixIcon: IconButton(
                                  //clear icon
                                  icon: const Icon(Icons.clear),
                                  color: const Color(0xff406767),
                                  onPressed: () => _searchController.clear(),
                                      
                                  
                                ),
                                prefixIcon: IconButton(
                                  //search icon
                                  icon: const Icon(Icons.search),
                                  color: const Color(0xff406767),
                                  onPressed: () {
                                    // Direct to biome page

                                  },
                                ),
                                border: OutlineInputBorder(
                                  //edges of search bar
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 45.0),

              decoration: BoxDecoration(
                color:const Color(0xff345454), // Darker green container
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Text(
                'Your Biome: Deciduous Forest',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              
            ),
           Expanded(
  child: ListView.builder(
    itemCount: 3, // Adjust the item count as needed
    itemBuilder: (context, index) {
      // Assuming you have a list of image paths
      List<String> imagePaths = [
        'assets/images/temperatedeciduousforest1.png', 
        'assets/images/temperatedeciduousforest2.png',
        'assets/images/temperatedeciduousforest3.png',
      ];

      return PlantInfoCard(imagePath: imagePaths[index]);
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
  final String imagePath;

  PlantInfoCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xff345454),
        borderRadius: BorderRadius.circular(30.0),
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
        contentPadding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
        title: Text('Plant Name', style: TextStyle(fontWeight: FontWeight.bold, color:  const Color(0xffefebe7))),
        subtitle: Text('basic description that continues with a... basic description that continues with a... basic description that continues with a... ', style: TextStyle(color: const Color(0xffefebe7))),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imagePath, width: 100), // Use the passed image path here
        ),
      ),
    );
  }
}

