import 'package:flutter/material.dart';
import 'biome.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.title});
  final String title;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset : false,
      
      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Container(//bg
              color: const Color(0xffefebe7),
              height: MediaQuery. of(context). size. height,
              width: MediaQuery. of(context). size. width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center, 

                children: [
                  const Image(image: AssetImage('assets/images/logoaltcolors.png'), height: 200,),

                  Container(//green part
                    height: 200, width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff406767)),
                    
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text("Enter your location\n to determine your local biome\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 20, fontFamily: 'Circe', color: Color(0xffefebe7))),
                              
                        Container(
                            height: 50, width: 300,
                            alignment: Alignment.bottomCenter,
                            
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color(0xffefebe7).withOpacity(0.7)),

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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BiomePage(title: 'Biome Page',)));

                                  },
                                ),
                                border: OutlineInputBorder(
                                  //edges of search bar
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
      ),),
    );
  }
}

