import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller/eskrim_controller.dart';
import 'Controller/size_controller.dart';
import 'home.dart';
import 'Controller/controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'update.dart';

class pesan extends StatelessWidget {
  pesan({Key? key}) : super(key: key);

  final GetxEsController ec = Get.find();
  final order o = Get.find();
  final Sizes s = Get.find();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Pesanan = firestore.collection("Pesanan");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 142, 163),
        title: Text(
          "Pesanan Es Krim",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF023E4A),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: ListView(children: [
        Container(
          child: Column(children: [
            SizedBox(height: 20), // Margin Bohongan
            Text('Rincian Pesanan Anda : '),
            Text('Nama Depan    : ${ec.namadepancontroller.text}'),
            Text('Nama Belakang :  ${ec.namabelakangcontroller.text} '),
            Text('Size          : ${s.groupValue} '),
            Text('Jumlah          : ${o.angka} '),
            Text('Alamat        : ${ec.alamatcontroller.text}'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Pesanan.add({
                  'Nama Depan': ec.namadepancontroller.text,
                  'Nama Belakang': ec.namabelakangcontroller.text,
                  'Size': s.groupValue.toString(),
                  'Alamat': ec.alamatcontroller.text,
                  'Jumlah': o.angka.toInt(),
                });
                ec.namadepancontroller.text = '';
                ec.namabelakangcontroller.text = '';
                s.groupValue = '';
                ec.alamatcontroller.text = '';

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                  return Home();
                }));
              },
              child: const Text(
                "Pesan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 204, 142, 163),
                ),
              ),
            ),
            snackBar()
          ]),
        )
      ]),
    );
  }
}

class snackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Status Pesanan'),
          color: Color.fromARGB(255, 204, 142, 163),
          onPressed: () {
            final snackdemo = SnackBar(
              content: Text('Pesanan anda sedang diproses, silahkan ke kasir'),
              duration: (Duration(seconds: 4)),
              backgroundColor: Color(0xFF023E4A),
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            );
            Scaffold.of(context).showSnackBar(snackdemo);
          }),
    );
  }
}
// }


