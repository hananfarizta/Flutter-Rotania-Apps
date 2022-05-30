import 'package:flutter/material.dart';
import 'package:rotania/models/produk.dart';
import 'package:rotania/theme.dart';

class ProdukCard extends StatelessWidget {
  final Produk produk;

  ProdukCard(this.produk);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 242,
      color: putihColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(children: [
          Image.asset(
            produk.imageurl,
            height: 125,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      produk.nama,
                      style: hitamMTextStyle.copyWith(fontSize: 13),
                    ),
                    Text(
                      produk.penjual,
                      style: abuabuRTextStyle.copyWith(fontSize: 10),
                    )
                  ],
                ),
                Image.asset(
                  'assets/titiktiga.png',
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/bintang.png',
                      height: 15,
                    ),
                    Text(
                      produk.rating,
                      style: abuabuSBTextStyle.copyWith(fontSize: 10),
                    )
                  ],
                ),
                Text(
                  produk.harga,
                  style: hitamSBTextStyle.copyWith(fontSize: 12),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
