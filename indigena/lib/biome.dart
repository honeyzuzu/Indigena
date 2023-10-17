import 'package:flutter/material.dart';
import 'searchPage.dart';


class BiomePage extends StatefulWidget {
  const BiomePage({super.key, required this.title});
  final String title;

  @override
  State<BiomePage> createState() => _BiomePageState();
}

class _BiomePageState extends State<BiomePage> {

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
                  Container(//green part
                    height: 200, width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff406767)),
                    
                    
                    child: Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Temperate Deciduous Forest\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 30, fontFamily: 'Carelia', color: Color(0xffefebe7))),
                       
                      ],
                    ),)
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



