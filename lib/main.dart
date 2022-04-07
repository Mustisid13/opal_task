import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:opal_task/homepage_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool reverse = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Featured Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 150,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10, crossAxisCount: 2
                  ),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context,index){
                    if(index.isEven)
                      {
                        return ProductBox(arrowColor: Colors.red,linearGradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [
                              Colors.blue.shade100,
                              Colors.white,
                            ]),);
                      } else{
                      return ProductBox(arrowColor: Colors.blue.shade900,
                        linearGradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [
                              Colors.red.shade100,
                              Colors.white,
                            ]),);
                    }


                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final LinearGradient linearGradient;
  final Color  arrowColor;
  const ProductBox({
    Key? key,required this.linearGradient,required this.arrowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          gradient: linearGradient
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Headlights",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,

            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
                  color: arrowColor,
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 100,
                width: 90,
                child: Image.network( "https://previews.123rf.com/images/alexanderkolikov/alexanderkolikov1704/alexanderkolikov170400150/75421131-spare-parts-car-headlight.jpg?fj=1",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
