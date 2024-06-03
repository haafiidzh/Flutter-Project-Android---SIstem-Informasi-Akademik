import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatefulWidget {
  ProfilState createState() => ProfilState();
}

class ProfilState extends State<Profil> {
  bool _satu = false;
  bool _dua = false;
  bool _tiga = false;

  Widget _buildDetail(int index, String text) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 40, right: 40),
      duration: const Duration(milliseconds: 200),
      color: Colors.white,
      height: index == 1
          ? (_satu ? 615 : 0)
          : (index == 2 ? (_dua ? 2300 : 0) : (_tiga ? 1950 : 0)),
      child: Container(
          padding: const EdgeInsets.all(20),
          child: index == 1
              ? Column(
                  children: [
                    Text(
                      'VISI',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    // const Divider(thickness: 2),
                    Text(
                        'Menjadi Universitas yang unggul di Bidang Bisnis dan Kewirausahaan di tingkat global pada tahun 2038',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 12)),
                    const SizedBox(height: 20),
                    Text(
                      'MISI',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    // const Divider(thickness: 2),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menyelenggarakan pendidikan berbasis kewirausahaan dan bisnis dalam rangka menyiapkan SDM  yang Mandiri, inOvatif, Visioner, beriman dan beorientasi Global',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('1.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Melakukan penelitian inovatif  dan kreatif yang dapat meningkatkan keunggulan dan daya saing bangsa',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('2.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Meimplementasikan hasil teknologi dan penelitian dalam rangka meningkatkan derajat kesejahteraan masyarakat',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('3.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menjalin kerjasama dalam dan luar negeri yang bermanfaat bagi kemajuan Universitas dan pengembangan keilmuan  dan teknonologi secara universal',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('4.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'TUJUAN',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    // const Divider(thickness: 2),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menghasilkan lulusan yang memiliki moral, etika, kepribadian dan akhlakul karimah serta menjadi suri tauladan yang baik bagi masyarakat,',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('1.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menghasilkan lulusan  di bidang kewirausahaan dan bisnis yang berkualitas global dalam rangka meningkatkan daya saing bangsa,',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('2.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menghasilkan penelitian yang inovatif dan bermanfaat bagi kemajuan Ilmu Pengetahuan dan Teknologi,',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('3.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  'Menghasilkan karya pengabdian kepada masyarakat  dalam rangka meningkatkan kesejahteraan bangsa',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('4.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: Text(
                                  ' Terselenggaranya kerjasama dalam dan luar negeri yang bermanfaat bagi kemajuan universitas dan pengembangan keilmuan secara universal,',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('5.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 12)),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )
              : index == 2
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/partial-logo-udb.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Text(
                            'Gubahan dasar logo terbentuk dari huruf UDB yang saling beririsan dan berkaitan sebagaimana Universitas Duta Bangsa yang terbentuk oleh SINERGI dari 3 perguruan tinggi : STMIK Duta Bangsa, Apikes dan Akbid Citra Medika yang melebur dalam satu Universitas Duta Bangsa.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 12)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'BUKU DAN PENA',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/partial-buku-pena.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Column(
                          children: [
                            Text('PENDIDIKAN DAN PENGAJARAN',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Dasar dari tujuan berdirinya universitas adalah menyelenggarakan pendidikan untuk mencerdaskan generasi penerus bangsa.',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 12))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'ENTERPRENEURSHIP & GLOBAL',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/partial-entrepreneur-globals.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Column(
                          children: [
                            Text('MENCETAK ENTREPENEUR SKALA GLOBAL',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                'UDB bertekad untuk menciptakan lulusan yang tidak hanya memiliki pengetahuan, keterampilan dan teknologi, namun juga jiwa leadership, karakter mandiri, sehingga tidak hanya siap di dunia kerja namun berani menciptakan lapangan pekerjaan (menjadi entrepeneur handal) yang kemudian sanggup bersaing dalam skala global).',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 12))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'KECAMBAH',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/partial-kecambah.png',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Column(
                          children: [
                            Text('PENGUASAAN SAINS DAN TEKNOLOGI',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Kelompok bidang pendidikan yang diselenggarakan UDB mengikuti perkembangan ilmu pengetahuan (sains) dan perkembangan teknologi.',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 12))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'LAMPIRAN',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/LOGO---BOTTOM-TEXT.jpg',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/LOGO---RIGHT-TEXT.jpg',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'logo_identitas/LOGO.jpg',
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Image.asset('sejarah/gedung-fikom.jpg'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Sejarah Universitas Duta Bangsa Surakarta tidak terlepas berdirinya Lembaga Kursus dan Pelatihan (LKP) Aksmi Kusuma Bangsa yang berdiri pada tahun 1995 yang didirikan oleh Bapak Drs. Singgih Purnomo melalui Yayasan Kusuma Bangsa Adi Prakarsa, lembaga ini pada awalnya adalah sebuah lembaga pendidikan yang menyiapkan tenaga terampil dalam berbagai bidang dengan durasi selama 1 tahun (setara D1).  Pada saat itu animo untuk masuk program pendidikan satu tahun sangatlah besar, karena ketrampilan yang ditawarkan sangat dibutuhkan di dunia kerja serta biaya pendidikan yang terjangkau. Dengan keberhasilan ini maka pada tahun 1997 didirikan LKP Citra Medika yang membuka pendidikan satu tahun di bidang kesehatan yang juga cukup diminati oleh masyarakat.',
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('sejarah/gedung-fikes.jpg'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Seiring dengan meningkatnya kesejahteraan masyarakat, maka tuntutan untuk mengikuti pendidikan yang lebih tinggi juga semakin meningkat, oleh sebab itu  melalui Yayasan  Internusa disiapkan proposal pendirian perguruan tinggi pada tahun 2001 yaitu usulan Akademi  Perekam Medik dan Informatika Kesehatan  (APIKES) Citra Medika  yang ijinnya disetujui oleh Departemen Pendidikan Nasional Berdasarkan SK Menteri Pendidikan Nasional No : SK No : 276/D/O/2002  dengan Program Studi D-3 Rekam Medis dan Informatika Kesehatan.',
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('sejarah/gedung-cemani.jpg'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Melihat peluang tingginya animo untuk mengikuti pendidikan di bidang komputer yang sangat tingi, maka melalui Yayasan Kusuma Bangsa Adi Prakarsa mengusulkan Sekolah Tinggi Komputer, maka pada tahun 2004 berdiri Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Duta Bangsa yang ijinnya disetujui oleh Departemen Pendidikan Nasional berdasarkan SK Menteri Pendidikan Nasional No : SK No : 24/D/O/2004  dengan Program Studi  S-1 Sistem Informasi dan D3 Manajemen Informatika, sedangkan Program Studi S-1 Teknik Informatika dan D3 Teknik Komputer berdiri pada tahun 2007.',
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Dalam rangka pengembangan pelayanan pendididikan kesehatan maka pada tahun 2007  melalui Yayasan Internusa didirikan Akademi Kebidanan Citra Medika dengan Menteri Pendidikan Nasional No : SK No : 174/D/O/2007  Keinginan untuk mengembangkan perguruan tinggi yang berkualitas selalu menjadi cita-cita pengurus yayasan, maka pada tahun 2012 diusulkan perubahan bentuk menjadi Sekolah Tinggi Kesehatan ( STIKES ) namun dengan segala daya upaya yang telah dilakukan , usulan ini ditolak oleh  Dirjen Pendidikan Tinggi. ',
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'Berdasarkan hasil rapat  pengurus Yayasan  Kusuma Bangsa Adi Prakarsa, Yayasan Internusa dan rapat senat akademik STMIK Duta Bangsa, Apikes Citra Medika dan Akademi Kebidanan Citra Medika kembali diusulkan penggabungan ketiga institusi ini menjadi Universitas pada tahun 2016 dan pada tanggal 29 Agustus 2018 oleh Kementrian Riset, Teknologi dan Pendidikan Tinggi telah disetujui pendirian  Universitas Duta Bangsa  Surakarta dengan SK No : 729/KPT/I/2018.',
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    )),
    );
  }

  void _toggleDetailVisibility(int index) {
    setState(() {
      if (index == 1) {
        _satu = !_satu;
        if (_dua) _dua = false;
        if (_tiga) _tiga = false;
      } else if (index == 2) {
        _dua = !_dua;
        if (_satu) _satu = false;
        if (_tiga) _tiga = false;
      } else if (index == 3) {
        _tiga = !_tiga;
        if (_satu) _satu = false;
        if (_dua) _dua = false;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade900,
          title: const Text(
            'Profil',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 214, 214, 214),
                height: 2810,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          height: 200,
                          width: double.infinity,
                          child: Image.asset('logo_udb.png'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Universitas Duta Bangsa',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Surakarta',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => _toggleDetailVisibility(1),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 40, right: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                              // borderRadius:
                              //     const BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Visi, Misi, & Tujuan ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  _satu
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildDetail(
                            1, 'Detail Satu'), // Menampilkan "Detail Satu"

                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => _toggleDetailVisibility(2),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 40, right: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Logo dan Identitas',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  _dua
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildDetail(
                            2, 'Detail Dua'), // Menampilkan "Detail Dua"

                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => _toggleDetailVisibility(3),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 40, right: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Sejarah',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  _dua
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildDetail(
                            3, 'Detail Dua'), // Menampilkan "Detail Dua"
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
