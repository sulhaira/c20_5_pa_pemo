import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan6/update.dart';
import 'Controller/eskrim_controller.dart';
import 'Controller/size_controller.dart';
import 'home.dart';
import 'Controller/controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class tampil extends StatelessWidget {
  tampil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Pesanan = firestore.collection("Pesanan");

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 92, 111, 161),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 204, 142, 163),
          title: Text(
            "Riwayat Pemesanan",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'ComingSoon',
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                FutureBuilder<QuerySnapshot>(
                  future: Pesanan.get(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map(
                                  (e) => Listorder(
                                      e.get('Nama Depan'),
                                      e.get('Nama Belakang'),
                                      e.get('Alamat'),
                                      e.get('Size'),
                                      e.get('Jumlah'), onUpdate: () {
                                    Pesanan.doc(e.id).update(
                                      {
                                        'Nama Depan': e.get('Nama Depan') +
                                            "| Pesanan Diterima"
                                      },
                                    );
                                  }, onDelete: () {
                                    Pesanan.doc(e.id).delete();
                                  }),
                                )
                                .toList(),
                          )
                        : Text('Loading...');
                  },
                ),
                SizedBox(height: 500),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    width: double.infinity,
                    child: RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      textColor: Colors.white,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Text("Back"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
