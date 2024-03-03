import 'package:flutter/material.dart';


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
      resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(//bg
              color: const Color(0xffefebe7),
              height: MediaQuery. of(context). size. height - 16,
              width: MediaQuery. of(context). size. width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(//green part
                    height: 700, width: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff406767)),
                    
                    child: const Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Temperate Deciduous Forest\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 22, fontFamily: 'Carelia', color: Color(0xffefebe7))),
                       
                      ],
                    ),)
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



