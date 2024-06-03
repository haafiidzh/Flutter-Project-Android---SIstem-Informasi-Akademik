import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:google_fonts/google_fonts.dart';

class MahasiswaDetail extends StatefulWidget {
  const MahasiswaDetail({
    Key? key,
    required this.nim,
    required this.nama,
    required this.alamat,
    required this.refresh,
  }) : super(key: key);
  final String nim;
  final String nama;
  final String alamat;
  final Function refresh;
  MahasiswaDetailState createState() => MahasiswaDetailState();
}

class MahasiswaDetailState extends State<MahasiswaDetail> {
  final TextEditingController nim = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController alamat = TextEditingController();
  bool sedangLoading = false;
  @override
  void initState() {
    super.initState();
    nim.text = widget.nim;
    nama.text = widget.nama;
    alamat.text = widget.alamat;
  }

  void ubah(BuildContext context) async {
    if (!sedangLoading) {
      setState(() {
        sedangLoading = true;
      });
      var url = Uri.http('localhost:3000', 'mahasiswa');
      var hasil = await http.put(
        url,
        headers: {"token": "123456", "Content-Type": "application/json"},
        body: convert.jsonEncode({
          "nim": nim.text,
          "nama": nama.text,
          "alamat": alamat.text,
        }),
      );

      var json = convert.jsonDecode(hasil.body);
//tampilkan pesan
      String pesan = json['pesan'];
      var snackBar = SnackBar(
        content: Text(pesan),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        sedangLoading = false;
      });
      widget.refresh();
      Navigator.pop(context);
    }
  }

  void hapus(BuildContext context) async {
    if (!sedangLoading) {
      setState(() {
        sedangLoading = true;
      });
      var url = Uri.http('localhost:3000', 'mahasiswa');
      var hasil = await http.delete(
        url,
        headers: {"token": "123456", "Content-Type": "application/json"},
        body: convert.jsonEncode({
          "nim": nim.text,
        }),
      );
      var json = convert.jsonDecode(hasil.body);
      //tampilkan pesan
      String pesan = json['pesan'];
      var snackBar = SnackBar(
        content: Text(pesan),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        sedangLoading = false;
      });
      widget.refresh();
      Navigator.pop(context);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text(
          widget.nama,
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
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
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'NIM',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: nim,
                  enabled: false,
                )
              ],
            ),
            // NIM

            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: nama,
                ),
              ],
            ),
            // Nama

            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    labelStyle: GoogleFonts.poppins(),
                  ),
                  controller: alamat,
                ),
              ],
            ),
            // Alamat

            const SizedBox(height: 20),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                  // margin: EdgeInsets.only(right: 20),
                  width: 140,
                  height: 50,
                  child: InkWell(
                      onTap: () => ubah(context),
                      child: sedangLoading
                          ? const CircularProgressIndicator()
                          : Container(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 0),
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('SIMPAN',
                                      style: GoogleFonts.poppins(
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18)),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.save,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                            )),
                ),
                Stack(alignment: Alignment.topLeft, children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  SizedBox(
                      width: 130,
                      height: 50,
                      child: InkWell(
                          onTap: () => hapus(context),
                          child: sedangLoading
                              ? const CircularProgressIndicator()
                              : Container(
                                  padding:
                                      const EdgeInsets.only(left: 20, right: 0),
                                  decoration: BoxDecoration(
                                      color: Colors.red.shade900,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('HAPUS',
                                          style: GoogleFonts.poppins(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18)),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )))
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
