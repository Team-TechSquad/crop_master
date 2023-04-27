import 'package:flutter/material.dart';
import 'crop.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a crop'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: <Widget>[
          cropImageContainer('https://imgs.search.brave.com/R4-x1LYpXcYie2VaaX-7cpNeZqCsYnLynjTza9uSHc8/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5i/MWFKUmNZb2M4QS0z/MWZhM2hrbVpBSGFG/aiZwaWQ9QXBp', 'Ngano', context),
          cropImageContainer('https://imgs.search.brave.com/GCe1HPPGI5TnNFwy8Q0ynx9QWPIISCiTq4DgBJdd3jY/rs:fit:600:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5I/R294T1JfcXN6UGJF/dnJmLUxtOW9RSGFG/MiZwaWQ9QXBp', 'Mpunga', context),
          cropImageContainer('https://imgs.search.brave.com/AX5CfUxOR9_vX3Fxnm_YgrVzoVeOekPiBQjHO26wjXw/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5r/bEZERjZWUzBpTjEw/TjdhRDNod0NBSGFF/NyZwaWQ9QXBp', 'Mahindi', context),
          cropImageContainer('https://imgs.search.brave.com/WCuAXb3eXrbYuebDbnw5gNDArGvq7lt2etW84cnY7Fk/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/eE9kSVpSeUthRHdB/cmU3MFJ0S3NBSGFF/OCZwaWQ9QXBp', 'Pamba', context),
          cropImageContainer('https://imgs.search.brave.com/ogAnQaZdOeSY4qL1vzrgh7SJ2JR7YS8_WPwBpAb6QHs/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5v/eWNsd24tR25DOFNk/SXV6RHBiam9BSGFF/SyZwaWQ9QXBp', 'Muwa', context),
          cropImageContainer('https://imgs.search.brave.com/2DnA8w0IECmeQFKqjBLHKLjFeNnF3Mz-D2fMbbqAVCE/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC44/TFBYSExoQ1hoT1BX/b0xtUTdUcGZ3SGFF/NyZwaWQ9QXBp', 'Maharage ya Soya', context),
          cropImageContainer('https://imgs.search.brave.com/L79BO11ymRDpv7qnY2Aiuqmz2OGboGRzNIzlw7tdg7M/rs:fit:715:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5z/R3g3dXNlakhjdkoz/VXJoY0hJYkF3SGFF/NiZwaWQ9QXBp', 'Viazi', context),
          cropImageContainer('https://imgs.search.brave.com/GcrhIn869715HWZNjJpKY67onJP94IgPsynXZD_GJvE/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5Q/cV9lT1dVVE1IS3Na/cTBNNGFmVDdBSGFF/SyZwaWQ9QXBp', 'Nyanya', context),
          cropImageContainer('https://imgs.search.brave.com/gneIHzYv8Gv9fbS8ZJXdcDIOCIaZkMBL2fuSNo8Cabs/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5T/UU84c2pMZ2g2aDhq/TFprVVBHbk9BSGFG/aiZwaWQ9QXBp', 'Vitunguu', context),
          cropImageContainer('https://imgs.search.brave.com/8Z3thvbqYFuAeyTZ7X0bs9sIW4rgzaRIxMlK4Vw_t7g/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/b2k4WDdzQzRxa2lR/VjhiSFZyV2x3SGFG/aiZwaWQ9QXBp', 'Pilipili', context),
        ],
      ),
    );
  }
}

Widget cropImageContainer(String imageUrl, String cropName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CropPage(
            cropImage: 'https://imgs.search.brave.com/GCe1HPPGI5TnNFwy8Q0ynx9QWPIISCiTq4DgBJdd3jY/rs:fit:600:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5I/R294T1JfcXN6UGJF/dnJmLUxtOW9RSGFG/MiZwaWQ9QXBp',
            cropDetails: 'Wheat (Triticum aestivum)',
          ),
        ),
      );

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
