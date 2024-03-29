import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


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
                    
                    child: Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Temperate Deciduous Forest\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 22, fontFamily: 'Carelia', color: Color(0xffefebe7))),
                       
                        CarouselSlider( 
                          items: [ 
                  
                //1st Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(6.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest1.png"), 
                                  fit: BoxFit.cover, 
                                ), 
                              ), 
                            ), 
                              
                            //2nd Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(6.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest2.png"), 
                                  fit: BoxFit.cover, 
                                ), 
                              ), 
                            ), 
                              
                            //3rd Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(6.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest3.png"), 
                                  fit: BoxFit.cover, 
                                ), 
                              ), 
                            ), 
                              
                            //4th Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(6.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest4.png"), 
                                  fit: BoxFit.cover, 
                                ), 
                              ), 
                            ), 
                              
                            //5th Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(6.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest5.png"), 
                                  fit: BoxFit.cover, 
                                ), 
                              ), 
                            ), 
  
          ], 
              
            //Slider Container properties 
              options: CarouselOptions( 
                height: 180.0, 
                enlargeCenterPage: true, 
                autoPlay: true, 
                aspectRatio: 16 / 9, 
                autoPlayCurve: Curves.fastOutSlowIn, 
                enableInfiniteScroll: true, 
                autoPlayAnimationDuration: Duration(milliseconds: 800), 
                viewportFraction: 0.8, 
              ), 
          ), 
                      
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



