import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  List<String> titles = [
    'Nearby restaurants',
    'Select the Favorites Menu',
    'Good food at a cheap price',
  ];

  List<String> subtitle = [
    'You don\'t have to go far to find a good restaurant,\nwe have provided all the restaurants that is \nnear you',
    'Now eat well, don\'t leave the house,You can \nchoose your favorite food only with \none click',
    'You can eat at expensive restaurants with\naffordable price',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 285,
            ),
            SizedBox(
              // width: 235,
              child: CarouselSlider(
                items: [
                  SvgPicture.asset(
                    'assets/svg/img1.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/img2.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/img3.svg',
                  ),
                ],
                options: CarouselOptions(
                  height: 235,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: ((index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
                ),
                // carouselController: carouselController,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                // padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      titles[currentIndex],
                      style: blackTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      subtitle[currentIndex],
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Skip',
                            style: greenTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 18,
                          height: 9,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: currentIndex == 0
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: currentIndex == 0
                                ? BorderRadius.circular(4)
                                : null,
                            color: currentIndex == 0 ? primaryColor : gray,
                          ),
                        ),
                        Container(
                          width: 18,
                          height: 9,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: currentIndex == 1
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: currentIndex == 1
                                ? BorderRadius.circular(4)
                                : null,
                            color: currentIndex == 1 ? primaryColor : gray,
                          ),
                        ),
                        Container(
                          width: 18,
                          height: 9,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: currentIndex == 2
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: currentIndex == 2
                                ? BorderRadius.circular(4)
                                : null,
                            color: currentIndex == 2 ? primaryColor : gray,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              // carouselController.nextPage(
                              //   duration: const Duration(milliseconds: 300),
                              // );
                            },
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: primaryColor,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
