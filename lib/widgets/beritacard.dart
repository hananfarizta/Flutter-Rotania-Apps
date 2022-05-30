import 'package:flutter/material.dart';
import 'package:rotania/models/berita.dart';
import 'package:rotania/theme.dart';

class BeritaCard extends StatelessWidget {
  final Berita berita;

  BeritaCard(this.berita);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  berita.judul,
                  style: hitamMTextStyle.copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  berita.keterangan,
                  style: abuabuRTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '13 Feb 2022',
                  style: abuabuRTextStyle.copyWith(fontSize: 12),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.asset(
                berita.imageurl,
                height: 80,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
