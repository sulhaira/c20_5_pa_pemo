import 'package:flutter/material.dart';
import 'home.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return Home();
                      }),
                    );
                  },
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icecreamstore.png',
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 300,
                  child: Text(
                    "ketika Anda memikirkan es krim, Ice Cream Shop adalah merek yang langsung terlintas® dalam pikiran. \n\n\nDengan es krim berkualitas tinggi kami, makanan penutup beku khusus, minuman, dan perpustakaan resep luar biasa dengan lebih dari 1300 rasa, \n\n\ntidak mengherankan bahwa kami benar-benar tujuan es krim yang paling disukai di wilayah ini.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Handlee',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
