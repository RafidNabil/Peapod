import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:peapod/constants/Appcolors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            OnboardingPage(
                imagePath: 'assets/1.jpg',
                heading: 'Fresh Food Order',
                text:
                    'Experience convenience and quallity with our locally scourced produce. Delevered straight to your door.',
                buttonText: 'Next',
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }),
            OnboardingPage(
                imagePath: 'assets/2.jpg',
                heading: 'Good Service',
                text:
                    'Count on us for unparalleled assistance, tailored to your needs, delivered with efficiency and professionalism.',
                buttonText: 'Next',
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }),
            OnboardingPage(
              imagePath: 'assets/3.jpg',
              heading: 'Fast Delivery',
              text:
                  'Enjoy prompt and efficient service as we swiftly bring your orders to you, ensuring convenience without compromise.',
              buttonText: 'Get Started',
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.42, 0, screenWidth * 0.42, screenHeight * 0.05),
          child: SmoothPageIndicator(
            controller: _pageController, // PageController instance
            count: 3,
            effect: const ExpandingDotsEffect(
                dotHeight: 12,
                dotWidth: 12,
                dotColor: Colors.grey,
                activeDotColor: AppColors.primaryColor),
            // Remove the unnecessary onDotClicked parameter
          ),
        ));
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  const OnboardingPage(
      {super.key,
      Key? otherKey,
      required this.imagePath,
      required this.heading,
      required this.text,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, screenHeight * 0.15, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryColor, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: CircleAvatar(
                radius: screenWidth * 0.35,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Text(
            heading,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.07, 0, screenWidth * 0.1, 0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          SizedBox(
            width: screenWidth * 0.8, // 80% of the screen width
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryColor),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
