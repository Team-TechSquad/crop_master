import 'package:flutter/material.dart';

class CropPage extends StatelessWidget {
  final String cropImage; // The image of the crop
  final String cropDetails; // The details of the crop

  CropPage({required this.cropImage, required this.cropDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Details'),
      ),
      body: Column(
        children: [
          Image.network(
            cropImage,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Climatic Conditions'),
                    Text('Fertilizer Type'),
                    Text('Time Taken'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to buyer's page
                  },
                  child: Text('Connect to Buyers'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
