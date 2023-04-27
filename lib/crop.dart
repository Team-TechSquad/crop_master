import 'package:flutter/material.dart';

import 'homepage.dart';

class CropPage extends StatelessWidget {
  final String cropImage; // The image of the crop
  final String cropDetails; // The details of the crop

  CropPage({required this.cropImage, required this.cropDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Zao la Ngano'),
          backgroundColor: Colors.green,
    ),
    body: SingleChildScrollView(
    child: Column(
    children: [
    Image.network('https://images.pexels.com/photos/265216/pexels-photo-265216.jpeg?auto=compress&cs=tinysrgb&w=400',
    height: 200,
    width: double.infinity,
    fit: BoxFit.cover,
    ),
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(
    cropDetails,
    style: TextStyle(fontSize: 16.0),
    ),
    ),
    Container(
    height: 180.0,
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: TextField(
    readOnly: true,
    decoration: InputDecoration(
    labelText: 'Maelezo kuhusu Ngano',
    border: OutlineInputBorder(),
    ),
    maxLines: null,
    controller: TextEditingController(
    text:
    'Ngano ni nafaka muhimu ambayo inalimwa na kuliwa kote ulimwenguni. Ni chakula kikuu kwa watu wengi, haswa katika maeneo kama Mashariki ya Kati, Afrika Kaskazini, na Ulaya. Ngano inahusiana na jenasi ya Triticum na familia ya Poaceae. Kuna aina kadhaa za ngano, ikiwa ni pamoja na ngano nyekundu ngumu, ngano nyekundu laini, ngano nyeupe ngumu, na ngano nyeupe laini, kila moja ikiwa na sifa na matumizi yake.'
    ),
    ),
    ),
    ),

    Container(
    height:230,
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: TextField(
    readOnly: true,
    decoration: InputDecoration(
    labelText: 'Mazingira sahihi kupanda ngano',
    border: OutlineInputBorder(),
    ),
    maxLines: null,
    controller: TextEditingController(
    text:
    'Ngano inahitaji mazingira yenye unyevu wa kutosha, joto wastani wa angalau 15-20°C, na udongo wenye rutuba ya kutosha. Hali ya hewa nchini Tanzania inaruhusu kupanda ngano kwa mafanikio katika maeneo mengi, hasa katika mikoa ya kaskazini kama vile Arusha, Kilimanjaro, Manyara, na Tanga. Ngano inapendelea udongo wenye pH kati ya 5.5 hadi 7.5 na hupendelea kupandwa kwenye maeneo yenye mvua za wastani wa milimita 500 hadi 600 kwa mwaka. Aidha, ngano inahitaji kupandwa kwenye sehemu zenye jua la kutosha na upepo wa kutosha ili kuzuia ugonjwa wa magonjwa ya mimea kama vile ungonjwa wa doa la ngano.'
    ),
    ),
    ),
    ),


      Container(
        height: 250.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: 'Mbolea za kupandia Ngano zilizothibitishwa Tanzania',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
            controller: TextEditingController(
                text:
                'Mbolea ya Urea: Mbolea hii ina kiwango kikubwa cha nitrojeni ambayo huchochea ukuaji wa majani, na hivyo kuongeza uzalishaji wa ngano. Mbolea ya DAP: Mbolea hii huwa na uwiano sawa wa virutubisho vya nitrojeni, fosforasi, na potasiamu, ambavyo vyote ni muhimu kwa ukuaji bora wa ngano. Mbolea ya NPK: Mbolea hii huwa na kiwango cha virutubisho vya nitrojeni, fosforasi, na potasiamu ambavyo ni muhimu kwa ukuaji wa ngano. Mbolea hii hutumiwa sana kwa ajili ya mazao ya nafaka kama vile ngano. Mbolea ya ZA: Mbolea hii ina virutubisho vya azoti na fosforasi ambavyo ni muhimu kwa ukuaji bora wa ngano. Mbolea ya CAN: Mbolea hii ina virutubisho vya nitrojeni na kalsiamu, ambavyo vyote ni muhimu kwa ukuaji bora wa ngano.'
            ),
          ),
        ),
      ),

      Container(
        height: 140.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: 'Wakala wa Ngano walioidhinishwa',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
            controller: TextEditingController(
                text:
                'Majina ya mawakala walioidhinishwa kuuza pembejeo za Ngano kwa mkoa wa Arusha ni wafuatao, Kishalu Enterprises - Wakala wa kilimo cha ngano kutoka Mkoa wa Arusha - Mjini, Soi Agrifarm - Wakala wa kilimo cha ngano kutoka Arumeru, Makaf Vete - Wakala wa kilimo cha ngano kutoka wilaya ya Ngorongoro'
            ),
          ),
        ),
      ),



    ElevatedButton(
    child: Text('Wasiliana na Wakala'),
      onPressed: () {
        print("clicked");
        launch("tel:+255689345140"); // add this line to call the number
      },
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all<Color>(Colors.green),
        foregroundColor:
        MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
      ),
    ),


    ],
    ),
    ),);
  }
}
