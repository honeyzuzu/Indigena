import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          // bodyText2: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(//bg
              color: Color(0xffefebe7),
              height: MediaQuery. of(context). size. height - 16,
              width: MediaQuery. of(context). size. width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/logoaltcolors.png'), height: 200,),

                  Container(//green part
                    height: 200, width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff406767)),
                    
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Enter your location\n to determine your local biome\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 20, fontFamily: 'Circe', color: Color(0xffefebe7))),
                        Container(
                      height: 50, width: 300,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffefebe7).withOpacity(0.7)),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Start typing...',
                          hintStyle: TextStyle(color: Color(0xff406767)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            color: Color(0xff406767),
                            onPressed: () => _searchController.clear(),
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            color: Color(0xff406767),
                            onPressed: () {
                              // Perform the search here
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    )
                      ],
                    )
                  )
                  
                ]
                
          ),
          ),

          ]
        ),
      ),
    );
  }
}

