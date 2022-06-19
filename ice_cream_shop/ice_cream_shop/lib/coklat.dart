import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller/controller.dart';
import 'Controller/controller.dart';
import 'Controller/eskrim_controller.dart';
import 'Controller/size_controller.dart';
import 'pemesanan.dart';
import 'home.dart';

class coklat extends StatelessWidget {
  coklat({Key? key}) : super(key: key);

  final order o = Get.put(order());

  final GetxEsController ec = Get.put(GetxEsController());
  final Sizes s = Get.put(Sizes());

  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 204, 165, 198),
          title: Text(
            "ICE CREAM COKLAT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 212, 214, 214),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Margin Bohongan
              Text('FORM PEMESANAN ICE CREAM '),
              const SizedBox(height: 20), // Margin Bohongan
              TextField(
                maxLines: 3,
                controller: ec.namadepancontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Depan Pemesan ",
                  hintText: 'Isi Nama Depan Pemesan ',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: ec.namabelakangcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nama Belakang Pemesan',
                    labelText: "Isi Nama Belakang Pemesan "),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: ec.alamatcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Alamat',
                    labelText: "Isi Alamat"),
              ),
              gambar1(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var jenis in s.sizees)
                      Row(
                        children: [
                          Radio(
                            value: jenis,
                            groupValue: s.groupValue,
                            onChanged: (value) {
                              s.groupValue = value.toString();
                              print(s.groupValue);
                              s.update();
                              Text(s.groupValue);
                            },
                          ),
                          Text(jenis),
                        ],
                      ),
                  ]),
              ElevatedButton(
                  child: Text('Tambah $angka'),
                  onPressed: () {
                    o.increment();
                    print(angka);
                  }),
              Obx(() => Text("${o.angka}")),
              TextButton(
                  child: Text("Kurang"),
                  onPressed: () {
                    o.decrement();
                  }),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return pesan();
                  }));
                },
                child: const Text(
                  "Pesan Sekarang",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 199, 200, 200),
                  ),
                ),
              ),
              MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class gambar1 extends StatelessWidget {
  const gambar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/coklat.png',
              ),
              fit: BoxFit.cover)),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
              return Home();
            }));
          }),
          child: Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF023E4A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Back",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
