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
              padding: EdgeInsets.only(top: 48.0),
              color: const Color(0xff406767),
              height: MediaQuery. of(context). size. height - 16,
              width: MediaQuery. of(context). size. width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(//white part

                    height: 200, width: 325,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffefebe7).withOpacity(0.7)),
                    
                    child: Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider( 
                          items: [ 
                //1st Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(3.0), 
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(8.0), 
                                image: DecorationImage( 
                                  image: AssetImage("assets/images/temperatedeciduousforest1.png"), 
                                ), 
                              ), 
                            ), 
                              
                            //2nd Image of Slider 
                            Container( 
                              margin: EdgeInsets.all(3.0), 
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
                              margin: EdgeInsets.all(3.0), 
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
                              margin: EdgeInsets.all(3.0), 
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
                height: 170.0, 
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
                  ),
                  
                  Text("Temperate Deciduous Forest\n", 
                            textAlign: TextAlign.center, 
                            style:
                              TextStyle(fontSize: 22, fontFamily: 'Carelia', color: Color(0xffefebe7))),
                       
          Text("The biome or ecological region that Troy falls within is typically referred to as the \"temperate deciduous forest biome.\" This biome is characterized by four distinct seasons, including relatively cold winters and warm summers, and is dominated by deciduous trees such as oak, maple, and beech. It is also part of the larger Northeastern coastal forest ecoregion, which extends along the northeastern coast of the United States and into southeastern Canada.\n", 
          textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontFamily: 'Circe', color: Color(0xffefebe7)),)
          
                ]
                
          ),
          ),

          ]
        ),
      ),),
    );
  }
}



