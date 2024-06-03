import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:college/halaman/mahasiswa/mahasiswa_tambah.dart';
import 'package:college/halaman/mahasiswa/mahasiswa_detail.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  MahasiswaState createState() => MahasiswaState();
}

class MahasiswaState extends State<Mahasiswa> {
  bool isHovered = false;

//membuat variabel untuk response info
  late Future<List> responseInfo;
//info terbaru dari API
  Future<List<dynamic>> getMahasiswa() async {
    var url = Uri.http('localhost:3000', 'mahasiswa');
    var hasil = await http.get(
      url,
      headers: {"token": "123456"},
    );
    var json = convert.jsonDecode(hasil.body);
    return json['data'];
  }

//memanggil future/fungsi getMahasiswa
//saat inisialisasi awal
  @override
  void initState() {
    super.initState();
    responseInfo = getMahasiswa();
  }

  void refreshData() {
    setState(() {
      responseInfo = getMahasiswa();
    });
  }

  Widget widgetInfo() {
    return FutureBuilder(
      future: responseInfo,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return snapshot.data.length == 0
              ? const Center(child: Text("Data Kosong"))
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        child: ListTile(
                          title: Text(snapshot.data[index]['nama'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          subtitle: Text("NIM: ${snapshot.data[index]['nim']}"
                              "Alamat: ${snapshot.data[index]['alamat']}"),
                        ),

                        // onTap:
                      ),
                      onTap: () async => {
                        //   //disini nanti memanggil detail mahasiswa

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MahasiswaDetail(
                              nim: snapshot.data[index]['nim'],
                              nama: snapshot.data[index]['nama'],
                              alamat: snapshot.data[index]['alamat'],
                              refresh: refreshData,
                            ),
                          ),
                        )
                      },
                    );
                  },
                );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: const Text(
          'Mahasiswa',
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MahasiswaTambah(refresh: refreshData),
            ),
          );
        },
      ),
      body: Container(
        color: const Color.fromARGB(255, 214, 214, 214),
        height: double.infinity,
        padding: const EdgeInsets.all(5.0),
        child: widgetInfo(),
      ),
    );
  }
}
