import 'package:flutter/material.dart';
import 'package:rotania/pages/signup.dart';
import 'package:rotania/theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putihColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Image.asset(
                'assets/welcome.png',
                height: 517,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 46,
                child: ElevatedButton(
                  child: Text(
                    'Create a new account',
                    style: putihSBTextStyle.copyWith(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
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
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: putihColor,
                    border: Border.all(color: merahColor)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                    },
                    child: Text(
                      'Sign in',
                      style: merahSBTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: putihColor,
                    border: Border.all(color: abuabu1Color)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google.png',
                      height: 18,
                    ),
                    SizedBox(
                      width: 7.5,
                    ),
                    Text(
                      'Continue with Google',
                      style: hitamSBTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 444,
                        decoration: BoxDecoration(
                          color: putihColor,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Kamu dapat menghubungkan dengan\nsosial media yang lain',
                              style: abuabuRTextStyle.copyWith(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                height: 46,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  child: Text(
                                    'Create a new account',
                                    style:
                                        putihSBTextStyle.copyWith(fontSize: 18),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return hijauColor;
                                          return merahColor;
                                        },
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                height: 46,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: putihColor,
                                    border: Border.all(color: merahColor)),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                                    },
                                    child: Text(
                                      'Sign in',
                                      style: merahSBTextStyle.copyWith(
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                height: 46,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: putihColor,
                                    border: Border.all(color: abuabu1Color)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/google.png',
                                      height: 18,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Text(
                                      'Continue with Google',
                                      style: hitamSBTextStyle.copyWith(
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: biruColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/facebook.png',
                                      height: 18,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Text(
                                      'Facebook',
                                      style: putihSBTextStyle.copyWith(
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: appleColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/apple.png',
                                      height: 18,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Text(
                                      'Apple',
                                      style: putihSBTextStyle.copyWith(
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Show less',
                                style: abuabuRTextStyle.copyWith(fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(
                'Show more',
                style: abuabuRTextStyle.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
