import 'package:flutter/material.dart';
import 'package:rotania/pages/signup.dart';
import 'package:rotania/pages/suksesmasuk.dart';
import 'package:rotania/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
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
                    'Sign in',
                    style: hitamSBTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Pengguna baru ?',
                        style: abuabuRTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          'Buat akun',
                          style: merahRTextStyle.copyWith(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 43,
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
                    height: 18,
                  ),
                  Text(
                    'Password',
                    style: hitamRTextStyle.copyWith(fontSize: 14),
                  ),
                  Container(
                    child: TextField(
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        hintText: 'Masukkan password',
                        hintStyle: abuabuRTextStyle.copyWith(fontSize: 14),
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text(
                    'Continue',
                    style: putihSBTextStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SuksesMasuk()));
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
            SizedBox(
              height: 314,
            ),
            Center(
              child: Text(
                'Reset your password',
                style: abuabuRTextStyle.copyWith(fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
