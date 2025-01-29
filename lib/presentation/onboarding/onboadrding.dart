import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/resources/assets_manager.dart';
import 'package:flutter_advanced/presentation/resources/color_manager.dart';
import 'package:flutter_advanced/presentation/resources/font_manager.dart';
import 'package:lottie/lottie.dart';

import '../resources/strings_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  late final List<SliderObject> _sliderData = _getSliderData();
  double _currentIndex = 0.0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
          StringsUsed.onBoardingTitle1,
          StringsUsed.onBoardingSubtitle2,
          AssetsManager.onBoarding1,
        ),
        SliderObject(
          StringsUsed.onBoardingTitle2,
          StringsUsed.onBoardingSubtitle3,
          AssetsManager.onBoarding1,
        ),
        SliderObject(
          StringsUsed.onBoardingTitle3,
          StringsUsed.onBoardingSubtitle4,
          AssetsManager.onBoarding1,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _sliderData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index.toDouble();
                });
              },
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(_sliderData[index].image),
                      Text(
                        _sliderData[index].title,
                        style: TextStyle(
                          fontFamily: FontConstant.fontFamily,
                          fontWeight: FontManager.bold,
                          fontSize: FontSize.extraExtraLarge,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(_sliderData[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontConstant.fontFamily,
                            fontWeight: FontManager.regular,
                            fontSize: FontSize.large,
                          )),
                      SizedBox(height: 30),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _pageController.jumpToPage(_sliderData.length - 1);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontSize: FontSize.large,
                  ),
                ),
              ),
              DotsIndicator(
                dotsCount: _sliderData.length,
                position: _currentIndex.toInt(),
                decorator: DotsDecorator(
                  activeColor: Colors.black,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_currentIndex < _sliderData.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue, // Change the color as needed
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.darkGrey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent,
                    child: Icon(
                      _currentIndex < _sliderData.length - 1
                          ? Icons.arrow_forward_ios
                          : Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class SliderObject {
  final String title;
  final String description;
  final String image;

  SliderObject(this.title, this.description, this.image);
}
