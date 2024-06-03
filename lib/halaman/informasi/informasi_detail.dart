import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformasiDetail extends StatefulWidget {
  const InformasiDetail(
      {Key? key,
      required this.judul,
      required this.konten,
      required this.gambar})
      : super(key: key);
  final String judul;
  final String konten;
  final String gambar;
  InformasiDetailState createState() => InformasiDetailState();
}

class InformasiDetailState extends State<InformasiDetail> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Informasi", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 214, 214, 214),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(widget.judul,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Image.network(
                  widget.gambar,
                )),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  widget.konten,
                  style: GoogleFonts.poppins(fontSize: 14),
                ))
          ]),
        ),
      ),
    );
  }
}
