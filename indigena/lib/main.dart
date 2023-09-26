// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// #docregion all
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        // #docregion centered-text
        body: Center(
          child: Container(
            color: Color(0xffefebe7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/logoaltcolors.png'), height: 200,),
                Container( 
                  decoration: BoxDecoration(
                    color: Color(0xff406767),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  height: 200, 
                  width: 300,
                  
                
              )
              ],

              
            
            ),
          ),           // #enddocregion text
        ),
        // #enddocregion centered-text
      ),
    );
  }
}
// #enddocregion all