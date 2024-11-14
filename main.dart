import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Container(
      color: Color.fromARGB(255, 46, 51, 122),
    );
    const String appTitle = ('pemandangan perumahan padat');
    TextStyle(color: Color.fromARGB(255, 255, 255, 255));
    Alignment.center;
    height:
    100;

    ;
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            Image(image: AssetImage("images/gambar.jpg")),
            TitleSection(
              name: 'Legacy hut',
              location: 'Gunung jati, kec.Jabumg',
            ),
            ButtonSection(),
            Padding(padding: EdgeInsets.all(30.10)),
            Text(
                ' rumah di bawah langit senja yang berwarna ungu dan oranye lembut. Langit tampak bergradasi dari warna ungu tua di bagian atas ke warna yang lebih terang mendekati horizon, menciptakan suasana tenang dan damai khas waktu matahari terbenam. Awan tipis tampak samar, menambah kedalaman pada pemandangan ini.')
          ],
        )),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
          Padding(padding: EdgeInsets.all(30)),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
              Text('CALL')
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.near_me)),
              Text("ROUTE")
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              Text("SHARE"),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.near_me)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
      ],
      // ···
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Langit tampak bergradasi dari warna ungu tua di bagian atas ke warna yang lebih terang mendekati horizon, ",
        softWrap: true,
      ),
    );
  }
}
