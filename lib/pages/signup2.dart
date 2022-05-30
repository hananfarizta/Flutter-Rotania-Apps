import 'package:flutter/material.dart';
import 'package:rotania/pages/signup3.dart';
import 'package:rotania/theme.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putihColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 24,
                      )),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    'Sign Up',
                    style: hitamSBTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Text(
                      'Sudah punya akun?',
                      style: abuabuRTextStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                      },
                      child: Text(
                        'Login',
                        style: merahRTextStyle.copyWith(fontSize: 12),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 38,
                  ),
                  Text(
                    'Kami sudah mengirimkan kode verifikasi\nke nomor 081******080',
                    style: merahRTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '4',
                        style: hitamSBTextStyle.copyWith(fontSize: 32),
                      ),
                      Text(
                        '4',
                        style: hitamSBTextStyle.copyWith(fontSize: 32),
                      ),
                      Text(
                        '4',
                        style: hitamSBTextStyle.copyWith(fontSize: 32),
                      ),
                      Text(
                        '4',
                        style: hitamSBTextStyle.copyWith(fontSize: 32),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 2,
                        width: 58.5,
                        color: abuabu3Color,
                      ),
                      Container(
                        height: 2,
                        width: 58.5,
                        color: abuabu3Color,
                      ),
                      Container(
                        height: 2,
                        width: 58.5,
                        color: abuabu3Color,
                      ),
                      Container(
                        height: 2,
                        width: 58.5,
                        color: abuabu3Color,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                    height: 46,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: Text(
                        'Continue',
                        style: putihSBTextStyle.copyWith(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp3()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return hijauColor;
                              return merahColor;
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
