import 'package:flutter/material.dart';
import 'package:rotania/models/perajin.dart';
import 'package:rotania/theme.dart';

class PengrajinCard extends StatelessWidget {
  final Pengjarin pengjarin;

  PengrajinCard(this.pengjarin);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
          color: putihColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  pengjarin.imageurl,
                  width: 85,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pengjarin.nama,
                      style: hitamMTextStyle.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/map.png',
                          height: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          pengjarin.daerah,
                          style: abuabuRTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/bintang.png',
                          height: 15,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '4.2  |  Terjual 909',
                          style: abuabuRTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(90 / 360),
                child: Image.asset(
                  'assets/titiktiga.png',
                  width: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
