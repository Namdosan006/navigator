import 'package:flutter/material.dart';
import 'package:tugas/pagedua.dart';

void main() {
  runApp(const Pagetiga());
}

class Pagetiga extends StatelessWidget {
  const Pagetiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Kebun Raya Bogor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Bogor, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
            size: 20,
          ),
          const Text('4.2'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Pada mulanya kebun ini hanya akan digunakan sebagai kebun percobaan bagi tanaman perkebunan yang akan diperkenalkan di Hindia Belanda. Namun pada perkembangannya pendirian Kebun Raya Bogor bisa dikatakan mengawali perkembangan ilmu pengetahuan di Indonesia dan sebagai wadah bagi ilmuwan terutama bidang botani di Indonesia secara terorganisasi pada zaman itu (1880 - 1905).\nDari sini lahir beberapa institusi ilmu pengetahuan lain, seperti Bibliotheca Bogoriensis (1842), Herbarium Bogoriense (1844), Kebun Raya Cibodas (1860), Laboratorium Treub (1884), dan Museum dan Laboratorium Zoologi (1894).',
        maxLines: 11,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Kebun Raya Bogor',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('Kebun Raya'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/kebunraya.jpg',
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
