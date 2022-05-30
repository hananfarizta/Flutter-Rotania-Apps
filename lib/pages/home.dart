import 'package:flutter/material.dart';
import 'package:rotania/models/berita.dart';
import 'package:rotania/models/perajin.dart';
import 'package:rotania/models/produk.dart';
import 'package:rotania/pages/whistlist.dart';
import 'package:rotania/theme.dart';
import 'package:rotania/widgets/beritacard.dart';
import 'package:rotania/widgets/pengrajincard.dart';
import 'package:rotania/widgets/produkcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        backgroundColor: putihColor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Lokasi kamu',
                            style: abuabuRTextStyle.copyWith(fontSize: 12),
                          ),
                          Image.asset(
                            'assets/panahbawah.png',
                            width: 20,
                          )
                        ],
                      ),
                      Text(
                        'Bandung, Jawa Barat',
                        style: hitamSBTextStyle.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Whistlist()));
                        },
                        child: Image.asset(
                          'assets/love.png',
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/notifikasi.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/keranjang.png',
                        width: 20,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: searchbarColor,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Cari produk yang kamu inginkan',
                      hintStyle: abuabuMTextStyle.copyWith(fontSize: 12),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic_none),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      'assets/card1.png',
                      height: 150,
                      width: 315,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/card2.png',
                      height: 150,
                      width: 315,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/card3.png',
                      height: 150,
                      width: 315,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Kategori Produk',
                style: hitamMTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                height: 76,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/dompet.png',
                              height: 48,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Dompet',
                              style: abuabuRTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/topi.png',
                              height: 48,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Topi',
                              style: abuabuRTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 38,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/tas.png',
                              height: 48,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Tas',
                              style: abuabuRTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/aksesoris.png',
                              height: 48,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Aksesoris',
                              style: abuabuRTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/perabot.png',
                              height: 48,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Perabotan',
                              style: abuabuRTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 910,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: searchbarColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Seller',
                          style: hitamMTextStyle.copyWith(fontSize: 16),
                        ),
                        Text(
                          'Lihat semua',
                          style: merahRTextStyle.copyWith(fontSize: 11),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 242,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProdukCard(Produk(
                              1,
                              'assets/dompetanyamanrotan.png',
                              'Dompet Rotan',
                              'Galilea Rotan',
                              '4.2',
                              'Rp. 150.000,-')),
                          SizedBox(
                            width: 15,
                          ),
                          ProdukCard(Produk(
                              2,
                              'assets/tastangan.png',
                              'Tas Tangan',
                              'Jawet Perindu',
                              '4.2',
                              'Rp. 200.000,-')),
                          SizedBox(
                            width: 15,
                          ),
                          ProdukCard(Produk(
                              3,
                              'assets/tikarrotan.png',
                              'Tikar Rotan',
                              'Indang Apang',
                              '4.2',
                              'Rp. 700.000,-'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/card4.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Pengrajin Favoritmu',
                        style: hitamMTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(children: [
                      PengrajinCard(
                        Pengjarin(1, 'Galilea Rotan', 'assets/pengrajin1.png',
                            'Bandung, Jawa Barat'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      PengrajinCard(Pengjarin(2, 'Jawet Perindu',
                          'assets/pengrajin2.png', 'Wonosobo, Jawa Timur')),
                      SizedBox(
                        height: 8,
                      ),
                      PengrajinCard(Pengjarin(3, 'Indang Apang',
                          'assets/pengrajin3.png', 'Denpasar, Bali'))
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Berita Terbaru',
                style: hitamMTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 410,
                child: Column(
                  children: [
                    BeritaCard(Berita(
                        1,
                        'assets/berita1.png',
                        'Kemenhub dan Dekranas\nBeri Pelatihan buat Perajin',
                        'Dewan Kerajinan Nasional dan Kem...')),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xffEDEDED),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BeritaCard(Berita(
                        2,
                        'assets/berita2.png',
                        'Cerita Vivi Zubedi Sukses\nImpor Tas Rajut Pekanbaru',
                        'Kerja keras Vivi bersama para pengr..')),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xffEDEDED),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BeritaCard(Berita(
                        3,
                        'assets/berita3.png',
                        'Sepi Turis, Pengrajin di Bali\nTargetkan Pasar Ekspor',
                        'Para pengrajin di Bali tak habis akal...'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: putihColor,
                    border: Border.all(color: Color(0xffFE3A30))),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                    },
                    child: Text(
                      'Lihat semua berita',
                      style: merahRTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
