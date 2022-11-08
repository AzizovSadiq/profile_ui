import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_profil/constand/app_constand.dart';

import '../widgets/custom_text.dart';
import '../widgets/sosial_card.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  bool isLight = true;

  void changeColor() {
    setState(() {
      isLight = !isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: isLight ? whiteColor : primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: changeColor,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.11 ,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isLight ? amberColor : primaryColor),
                            shape: BoxShape.circle,
                            color: isLight ? primaryColor : amberColor),
                        child: SvgPicture.asset(
                          'assets/icons/flash.svg',
                          color: redColor,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              color: amberColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: isLight ? primaryColor : amberColor,
                                  width: 3),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/fon.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        height20,
                        CustomText(
                          text: 'Azizov Sadiq',
                          textColor: isLight ? blackColor : whiteColor,
                          textSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        height20,
                        CustomText(
                          text: 'Flutter Devoloper',
                          textColor: isLight ? primaryColor : whiteColor,
                          textSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        height30,
                        CustomText(
                          text:
                              'Intend to build a career with company of hi-tech environment with committed & dedicated people, which will help me to realize my potential.',
                          textColor: isLight ? blackColor : whiteColor,
                          textSize: 18,
                          textAlign: TextAlign.center,
                        ),
                        height30,
                        Container(
                          padding: const EdgeInsets.all(7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: isLight ? primaryColor : greyColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: CustomText(
                              text: 'ezizov.sadiq1985@gmail.com',
                              textAlign: TextAlign.center,
                              textSize: 18,
                              textColor: isLight ? whiteColor : blackColor),
                        ),
                        height30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialCard(
                                icon: 'assets/icons/twitter.svg',
                                iconColor: isLight ? primaryColor : greyColor,
                                press: () {}),
                            width30,
                            SocialCard(
                                icon: 'assets/icons/facebook.svg',
                                iconColor: isLight ? primaryColor : greyColor,
                                press: () {}),
                            width30,
                            SocialCard(
                                icon: 'assets/icons/google.svg',
                                iconColor: isLight ? primaryColor : greyColor,
                                press: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
