import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../authentication/sign_in.dart';
import '../navmenu/menu_dashboard_layout.dart';

class Onboardings extends StatefulWidget {
  const Onboardings({key});

  @override
  State<Onboardings> createState() => _OnboardingsState();
}

class _OnboardingsState extends State<Onboardings> {
  int _currentPage = 0;
  final int _numPages = 3;
  late PageController _pageController;
  List<Widget> _buildPageIndicator() {
    final List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 500,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 7.0),
      height: 6.0,
      width: 24.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : const Color(0xFF707070),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 49,
            ),
            Row(
              children: const [
                Text(
                  'RISEHALL',
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: const [
                  OnboardingContents(
                    image:
                        'assets/images/onboarding/undraw_content_team_re_6rlg.svg',
                    subtext:
                        'Learn and grow with help from world-class mentors across the globe',
                    text: 'A platform for meeting the perfect mentors',
                  ),
                  OnboardingContents(
                    image:
                        'assets/images/onboarding/undraw_design_team_re_gh2d.svg',
                    subtext:
                        'Connect with experienced mentors to help navigate your career path and build your skillset with confidence',
                    text: 'Discovering the perfect learning path',
                  ),
                  OnboardingContents(
                    image:
                        'assets/images/onboarding/undraw_speech_to_text_re_8mtf.svg',
                    subtext:
                        'The act of learning, is a continous process, Risehall is the author of the process',
                    text: 'Get mentored by experts in business & tech',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            const SizedBox(
              height: 78,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => nextPage(),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      )),
    );
  }

  void previousPage() {
    _pageController.animateToPage(_pageController.page!.toInt() - 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void nextPage() {
    _pageController.animateToPage(_pageController.page!.toInt() + 1,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);

    if (_currentPage == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ),
      );
    }
  }
}

class OnboardingContents extends StatelessWidget {
  const OnboardingContents({
    Key? key,
    required this.text,
    required this.image,
    required this.subtext,
  }) : super(key: key);
  final String text;
  final String image;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
          height: MediaQuery.of(context).size.height * 0.5,
        ),

        const SizedBox(
          height: 11,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.normal, color: Colors.blue),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          subtext,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        // kNormalText(
        //   text: text,
        //   siaraColor: true,
        //   size: 20,
        //   fontWeight: FontWeight.bold,
        // ),
        // const SizedBox(
        //   height: 9,
        // ),
        // kNormalText(
        //   text: subtext,
        //   siaraColor: false,
        //   size: 12,
        //   fontWeight: FontWeight.normal,
        //   align: TextAlign.center,
        // ),
      ],
    );
  }
}

  // gotoSelectedPage() {
  //   if (_currentPage == 0) {
  //     Future.delayed(
  //       const Duration(seconds: 1),
  //     ).then((value) => (value) {
  //           _currentPage++;
  //         });
  //   }
  //   _pageController.animateToPage(
  //     _currentPage,
  //     duration: const Duration(seconds: 2),
  //     curve: Curves.easeIn,
  //   );
  // }

  // void nextPage() {
  //   _pageController.animateToPage(_pageController.page!.toInt() + 1,
  //       duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  // }

 
