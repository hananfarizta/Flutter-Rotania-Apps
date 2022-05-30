import 'package:flutter/material.dart';
import 'package:rotania/pages/home.dart';
import 'package:rotania/theme.dart';

class SuksesMasuk extends StatelessWidget {
  const SuksesMasuk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putihColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 130, right: 24),
              child: Image.asset(
                'assets/suksesmasuk.png',
                height: 310,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Selamat kamu sekarang menjadi Rotania',
              style: hitamSBTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Halo, Sekarang kamu sudah menjadi bagian dari Rotan Mania. Yuk nikmati aplikasi dan fitur-fitur yang ada. Enjoy :)',
                style: abuabuRTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text(
                    'Sign In',
                    style: putihSBTextStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return hijauColor;
                          return merahColor;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
