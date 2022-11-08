import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_profil/constand/app_constand.dart';
import 'package:ui_profil/widgets/sosial_card.dart';

import '../widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.11 ,
                        height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          shape: BoxShape.circle,
                          color: yellowColor),
                      child: SvgPicture.asset(
                        'assets/icons/flash.svg',
                        color: redColor,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              color: amberColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: primaryColor, width: 3),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/fon.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        height20,
                        const CustomText(
                          text: 'Azizov Sadiq',
                          textColor: blackColor,
                          textSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        height20,
                        const CustomText(
                          text: 'Flutter Devoloper',
                          textColor: primaryColor,
                          textSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        height30,
                        const CustomText(
                          text:
                              'Intend to build a career with company of hi-tech environment with committed & dedicated people, which will help me to realize my potential.',
                          textColor: blackColor,
                          textSize: 18,
                          textAlign: TextAlign.center,
                        ),
                       height30,
                        Container(
                          padding: const EdgeInsets.all(7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: const CustomText(
                            text: 'ezizov.sadiq1985@gmail.com',
                            textAlign: TextAlign.center,
                            textSize: 18,
                            textColor: whiteColor,
                          ),
                        ),
                        height30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialCard(
                                icon: 'assets/icons/twitter.svg',
                                iconColor: primaryColor,
                                press: () {}),
                            width30,
                            SocialCard(
                                icon: 'assets/icons/facebook.svg',
                                iconColor: primaryColor,
                                press: () {}),
                           width30,
                            SocialCard(
                                icon: 'assets/icons/google.svg',
                                iconColor: primaryColor,
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
