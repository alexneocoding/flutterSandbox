
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    const PrimaryColor = const Color(0xFF000000);

return MaterialApp(
    title: 'Avengers',
    theme: ThemeData(
   primaryColor: PrimaryColor),
     home: Scaffold(
      appBar: AppBar(
      title: Text(''),
       ),
      body: 
        //decoration: BoxDecoration(color: Colors.black),
        //child:
        Container(
          color: Colors.black,
           margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:
          Column(children: <Widget>[
            Image.network('https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengers-infinitywar-endgame_base_mh_logo_01.png'),
            Container(
            child:
          Column(children: <Widget>[
            CarouselSlider(
  height: 500.0,
  autoPlay: true,
  enlargeCenterPage: true,
  items: ['http://i.annihil.us/u/prod/marvel/i/mg/f/30/50fecad1f395b.jpg'
   ,'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/5/f0/5261a85a501fe.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/6/40/5274137e3e2cd.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/3/50/527bb6490a176.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/3/00/539a06a64b262.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/5/03/528d31a791308.jpg'
  ,'http://i.annihil.us/u/prod/marvel/i/mg/5/90/526032a2cce62.jpg'
  ].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
          ),
          //child: Text('text $i', style: TextStyle(fontSize: 16.0),)
          child:
         Image.network(i.toString(), fit:BoxFit.fitHeight,),
        );
      },
    );
  }).toList(),
)]
            ,)
          )],
          ),
        ),
     )
);
}

}

