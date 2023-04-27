import 'package:flutter/material.dart';
import 'crop.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a crop'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: <Widget>[
          cropImageContainer('https://images.unsplash.com/photo-1531740600135-6fbc18cc5b46', 'Wheat', context),
          cropImageContainer('https://images.unsplash.com/photo-1591352587177-ea79dfdaf8e7', 'Rice', context),
          cropImageContainer('https://images.unsplash.com/photo-1551121145-0e3b7458e1ba', 'Corn', context),
          cropImageContainer('https://images.unsplash.com/photo-1518611170417-8f4548a6a3ec', 'Cotton', context),
          cropImageContainer('https://images.unsplash.com/photo-1505250466687-a6698c750805', 'Sugarcane', context),
          cropImageContainer('https://images.unsplash.com/photo-1506074908242-0e8f6fea0edc', 'Soybean', context),
          cropImageContainer('https://images.unsplash.com/photo-1555666666-200a4e3e4f0a', 'Potato', context),
          cropImageContainer('https://images.unsplash.com/photo-1548187315-cbf2eb08f670', 'Tomato', context),
          cropImageContainer('https://images.unsplash.com/photo-1580258042241-1b96d7e441cf', 'Onion', context),
          cropImageContainer('https://images.unsplash.com/photo-1528327696185-aaec8f7e850a', 'Pepper', context),
        ],
      ),
    );
  }
}

Widget cropImageContainer(String imageUrl, String cropName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CropPage(cropName)));
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 4.0),
          Center(
            child: Text(
              cropName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 4.0),
        ],
      ),
    ),
  );
}
