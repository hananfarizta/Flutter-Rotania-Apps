import 'package:flutter/material.dart';
import 'package:rotania/pages/onboarding2.dart';
import 'package:rotania/pages/onboarding3.dart';
import 'package:rotania/theme.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putihColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
              child: Container(
                height: 476,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: jambonColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Onboarding3()));
                        },
                        child: Text(
                          'Skip',
                          style: merahMTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 56.78,
                  ),
                  Image.asset(
                    'assets/onboarding1.png',
                    width: 327,
                    height: 243.65,
                  ),
                  SizedBox(
                    height: 63.56,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bulat.png',
                        width: 10,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/bulat.png',
                        width: 10,
                        color: abuabu1Color,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/bulat.png',
                        width: 10,
                        color: abuabu1Color,
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Selamat datang di aplikasi Rotania',
                style: hitamSBTextStyle.copyWith(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                'Ini adalah sebuah aplikasi yang mendukung bagi kamu pecinta rotan untuk bertransaksi dan mendapatkan forum',
                style: abuabuRTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 47,
                child: ElevatedButton(
                  child: Text(
                    'Next',
                    style: putihSBTextStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Onboarding2()));
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
                      ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
