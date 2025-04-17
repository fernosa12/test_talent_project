import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_clean_architecture/constant/app_color.dart';
import 'package:test_clean_architecture/core/local_database/local_database.dart';

import '../../../lib.dart';

@RoutePage()
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6C5CE7),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: contents.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        contents[index].image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 300),
                  ],
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(
                children: [
                  IgnorePointer(
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  ExcludeSemantics(
                    excluding: true,
                    child: SizedBox(
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Text(
                              contents[_currentPage].title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColorBold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              contents[_currentPage].description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.textColor,
                              ),
                            ),
                            const Spacer(),
                            if (_currentPage != contents.length - 1)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: SmoothPageIndicator(
                                  controller: _pageController,
                                  count: contents.length,
                                  effect: const WormEffect(
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    spacing: 8,
                                    activeDotColor: Color(0xFF6C5CE7),
                                    dotColor: Colors.grey,
                                  ),
                                ),
                              )
                            else
                              ExcludeSemantics(
                                excluding: true,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 24),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        await di<IAppPreferences>()
                                            .setFirstTimeDone();
                                        if (context.mounted) {
                                          context.router
                                              .replace(const LoginRoute());
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF6C5CE7),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Text(
                                        'Mulai',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
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

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
