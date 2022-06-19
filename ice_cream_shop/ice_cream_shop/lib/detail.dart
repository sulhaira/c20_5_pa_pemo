import 'package:flutter/material.dart';
import 'cococo.dart';
import 'coklat.dart';
import 'eskrim2.dart';
import 'profile.dart';
import 'home.dart';
import 'Controller/controller.dart';
import 'package:get/get.dart';

class eskrim1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('assets/eskrim2.png'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gelato Bucket',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Gelato Bucket Ice Cream dengan perpaduan vanilla, coklat, '
          'dan lattte\ndikemas dalam satu tempat\nuntuk menciptakan kombinasi sempurna, '
          'topping wafer dengan kombinasi strawberry',
          textAlign: TextAlign.justify,
        ));

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('170 Reviews'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Freeze", "30 min"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-6"),
      ],
    );
    Widget back = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 50),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return Home();
                }),
              );
            },
            child: Text(
              "< Kembali ",
              style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return eskrim2();
                }),
              );
            },
            child: Text("Pesan > ",
                style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
          ),
        ]),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 204, 142, 163),
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Deskripsi Ice Cream',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
            back,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}

class cococo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('assets/cococo.png'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gelato Bucket',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Frozen Yogurt cocok untuk teman diet makanan yang sehat untuk pencernaan '
          'es krim dengan rasa asam dan kandungan lemak lebih rendah. ',
          textAlign: TextAlign.justify,
        ));

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('200 Reviews'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Freeze", "30 min"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-6"),
      ],
    );
    Widget back = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 50),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return Home();
                }),
              );
            },
            child: Text(
              "< Kembali ",
              style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return eskrim2();
                }),
              );
            },
            child: Text("Pesan > ",
                style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
          ),
        ]),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 204, 142, 163),
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Deskripsi Ice Cream',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
            back,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection1(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection2(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}

class coklat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('assets/coklat.png'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gelato Bucket',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Perpaduan antara kacang dan coklat\nmembuat rasa Cornetto, '
          'menjadi lebih nikmat dengan\nbalutan coklat yang mewah. ',
          textAlign: TextAlign.justify,
        ));

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('250 Reviews'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Freeze", "30 min"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-6"),
      ],
    );
    Widget back = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 50),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return Home();
                }),
              );
            },
            child: Text(
              "< Kembali ",
              style: TextStyle(fontSize: 14, color: Color(0xFF023E4A)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) {
                  return eskrim2();
                }),
              );
            },
            child: Text("Pesan > ",
                style: TextStyle(fontSize: 14, color: Color(0xFF023E4A))),
          ),
        ]),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 204, 142, 163),
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Deskripsi Ice Cream',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
            back,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection2(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection3(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
