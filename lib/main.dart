import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            const Trending(),
            const ListBerita(),
            const ListBerita(),
            const ListBerita(),
            const ListBerita(),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      // margin: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 180,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltb4b50754b0649520/6325eeb78a2abe4577f7f66e/GettyImages-1424626207.jpg?auto=webp&format=jpg&quality=60&width=500")
                  ],
                ),
              ),
              Container(
                height: 116,
                width: 228,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: const Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
              ),
            ],
          ),
          Container(
            height: 35,
            alignment: Alignment.centerLeft,
            child: const Text('Barcelona Feb 13, 2021'),
          ),
        ],
      ),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    "https://akcdn.detik.net.id/community/media/visual/2022/08/29/barcelona.jpeg?w=700&q=90"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            child: const Text(
              'Costa Mendekat Ke Palmeiras',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Colors.purpleAccent,
            child: const Text(
              'Transfer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
