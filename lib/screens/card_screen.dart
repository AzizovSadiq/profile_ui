import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constand/app_constand.dart';
import '../widgets/custom_text.dart';
import '../widgets/sosial_card.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
        backgroundColor: secondaryColor,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: isLight ? whiteColor : primaryColor,
              border: Border.all(width: 4, color: amberColor),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: changeColor,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            width: MediaQuery.of(context).size.width * 0.09,
                            height: MediaQuery.of(context).size.height * 0.05,
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                  color: amberColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color:
                                          isLight ? primaryColor : amberColor,
                                      width: 3),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/fon.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            height10,
                            CustomText(
                              text: 'Azizov Sadiq',
                              textColor: isLight ? blackColor : whiteColor,
                              textSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            height10,
                            CustomText(
                              text: 'Flutter Devoloper',
                              textColor: isLight ? primaryColor : whiteColor,
                              textSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            height15,
                            CustomText(
                              text:
                                  'Intend to build a career with company of hi-tech environment with committed & dedicated people, which will help me to realize my potential.',
                              textColor: isLight ? blackColor : whiteColor,
                              textSize: 17,
                              textAlign: TextAlign.center,
                            ),
                            height15,
                            Container(
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: isLight ? primaryColor : greyColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: CustomText(
                                  text: 'ezizov.sadiq1985@gmail.com',
                                  textAlign: TextAlign.center,
                                  textSize: 15,
                                  textColor: isLight ? whiteColor : blackColor),
                            ),
                            height15,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialCard(
                                    icon: 'assets/icons/twitter.svg',
                                    iconColor:
                                        isLight ? primaryColor : greyColor,
                                    press: () {}),
                                width30,
                                SocialCard(
                                    icon: 'assets/icons/facebook.svg',
                                    iconColor:
                                        isLight ? primaryColor : greyColor,
                                    press: () {}),
                                width30,
                                SocialCard(
                                    icon: 'assets/icons/google.svg',
                                    iconColor:
                                        isLight ? primaryColor : greyColor,
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
        ),
      ),
    );
  }
}
