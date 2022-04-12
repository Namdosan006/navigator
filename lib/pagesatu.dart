import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/pagedua.dart';

class Pagesatu extends StatelessWidget {
  const Pagesatu({Key? key}) : super(key: key);

  get widht => null;

  get Googlefonts => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vokasi App',
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/vokasilogo-fill.png'),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Sekolah Vokasi',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(
              'Unggul, Mandiri & Berkarakter',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(50.0),
              ),
            ),
            Container(
              width: 200,
              height: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffEE8301),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Pagedua());
                  Navigator.push(context, route);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(5.0),
              ),
            ),
            Container(
              width: 200,
              height: 35,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.0,
                    color: Color(0xffEE8301),
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xffEE8301),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: (Colors.white),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
