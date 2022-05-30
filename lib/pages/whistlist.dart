import 'package:flutter/material.dart';
import 'package:rotania/theme.dart';

class Whistlist extends StatelessWidget {
  const Whistlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putihColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 24,
                    ),
                  ),
                  Text(
                    'Wishlist',
                    style: hitamMTextStyle.copyWith(fontSize: 16),
                  ),
                  Image.asset(
                    'assets/keranjang.png',
                    width: 20,
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
                      hintText: 'Cari wishlist kamu',
                      hintStyle: abuabuMTextStyle.copyWith(fontSize: 12),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic_none),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Container(
              height: 289,
              width: MediaQuery.of(context).size.width,
              color: searchbarColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Container(
                  width: 325,
                  height: 249,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: putihColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 34, top: 25),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Galilea Rotan',
                                  style: hitamMTextStyle.copyWith(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Official Store',
                                      style: hitamRTextStyle.copyWith(
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset(
                                      'assets/officialstore.png',
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 1,
                              height: 37,
                              color: abuabu2Color,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bandung, Jawa Barat',
                                  style:
                                      abuabuMTextStyle.copyWith(fontSize: 10),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/bintang.png',
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      '4.2',
                                      style: hitamMTextStyle.copyWith(
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 275,
                        height: 1,
                        color: Color(0xffEDEDED),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/dompetanyamanrotan.png',
                              height: 70,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dompet Rotan',
                                  style: hitamMTextStyle.copyWith(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Kecil, Model 1',
                                  style:
                                      abuabuRTextStyle.copyWith(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Rp 150.000,-',
                                  style:
                                      jambonSBTextStyle.copyWith(fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34, right: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/trash.png',
                              width: 24,
                            ),
                            Container(
                              width: 181,
                              height: 33,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: merahColor),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 6),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/+.png',
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Keranjang',
                                        style: putihSBTextStyle.copyWith(
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
