// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'lihat.dart';
import 'login_view.dart';
import 'registrasi.dart';
import 'pemesanan.dart';
import 'cococo.dart';
import 'coklat.dart';
import 'eskrim2.dart';
import 'profile.dart';
import 'landingpage.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget eskrim2() {
    return Container(
      width: 190,
      height: 180,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/eskrim2.png'),
        ),
      ),
    );
  }

  Widget coklat() {
    return Container(
      width: 190,
      height: 190,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/coklat.png'),
        ),
      ),
    );
  }

  Widget cococo() {
    return Container(
      width: 190,
      height: 190,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cococo.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference users = firestore.collection("users");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 142, 163),
        title: Text(
          "ICE CREAM STORE",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 92, 111, 161),
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 92, 111, 161),
              ),
              child: Text(
                "Ice Cream Store",
                style: TextStyle(
                  color: Color(0xFF023E4A),
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text("Tentang Aplikasi"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return profile();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Pesanan"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return tampil();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return LoginPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                width: 20,
              ),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        eskrim2(),
                        detailpage(),
                        SizedBox(
                          width: 5,
                        ),
                        MyButton(),
                      ],
                    ),
                  ),
                ],
              ),
              button(),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        coklat(),
                        detailpage2(),
                        SizedBox(
                          width: 5,
                        ),
                        MyButton1(),
                      ],
                    ),
                  )
                ],
              ),
              button1(),
              Row(
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          cococo(),
                          detailpage1(),
                          SizedBox(
                            width: 5,
                          ),
                          MyButton2(),
                        ],
                      ))
                ],
              ),
              button2(),
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF023E4A) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color(0xFF023E4A),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFF023E4A),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim2();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MyButton1 extends StatelessWidget {
  const MyButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return coklat();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MyButton2 extends StatelessWidget {
  const MyButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim1();
        }));
      }),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class detailpage extends StatelessWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return eskrim1();
        }));
      }),
      child: Container(
        width: 110,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class detailpage1 extends StatelessWidget {
  const detailpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return cococo1();
        }));
      }),
      child: Container(
        width: 110,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class detailpage2 extends StatelessWidget {
  const detailpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return coklat1();
        }));
      }),
      child: Container(
        width: 110,
        height: 50,
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 142, 163),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Deskripsi Item",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tGelato Bucket",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}

class button1 extends StatelessWidget {
  const button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCornetto",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}

class button2 extends StatelessWidget {
  const button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\Frozen Yogurt",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
