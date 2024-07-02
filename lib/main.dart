import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //logo
                Image.network(
                  'https://iconape.com/wp-content/files/nd/76188/png/lamborghini-aventadorsvj-logo.png',
                  height: 130,
                ),
                //car image
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 130,
                  ),
                ),
                //car name
                Text(
                  'Lamborghini Aventador SVG',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specifications',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildContainer(
                          'https://www.motortrend.com/files/662c0c92a96ea50009252664/103-lamborghini-logo-script-motortrend.jpg',
                          'Engine Displacement \n 6498 cc',
                          Colors.red[200]),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer(
                          'https://i.ebayimg.com/images/g/QC0AAOSwZeFfJRx6/s-l1600.jpg',
                          'Fuel Tank \n Capacity \n 90 Litres',
                          Colors.black26),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyXbR7mI0cGtzx9SBvOD3JkRiTYa36K22IYQ&s',
                          'Body Type \n Couple',
                          Colors.red[200]),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer(
                          'https://i.ebayimg.com/images/g/om4AAOSwYPJd7ZWm/s-l1600.jpg',
                          'No. of Cylinders \n 12',
                          Colors.black26),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLhVRPCjLKH7TVP2fDNzBRnoPY3lui4CtOMQ&s',
                          'Transmission\n Type \n Automatic',
                          Colors.red[200]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/aventador/svj/2021/03_19/aventador_svj_s1_m.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 30,
                ),

                Text(
                  'Augmented Reality',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Frame the QR code with your smartphone and turn on the Lamborghini Augmented Reality experience.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset('assets/images/qr.png')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(img, title, color) {
    return Container(
      height: 150,
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 10,
          ),
          Image.network(
            img,
            height: 60,
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: color,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
