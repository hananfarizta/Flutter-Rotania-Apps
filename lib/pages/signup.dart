import 'package:flutter/material.dart';
import 'package:rotania/pages/signup2.dart';
import 'package:rotania/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isButtonActive = true;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;

      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

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
                    'Kami akan mengirimkan kode verifikasi\nke nomor teleponmu',
                    style: merahRTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Text(
                    'Nomor telepon',
                    style: hitamRTextStyle.copyWith(fontSize: 14),
                  ),
                  Container(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Masukkan nomor mu',
                        hintStyle: abuabuRTextStyle.copyWith(fontSize: 14)),
                  )),
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
                            MaterialPageRoute(builder: (context) => SignUp2()));
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
