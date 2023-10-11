import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/presentation/misc/constants.dart';
import 'package:quran/presentation/misc/methods.dart';
import 'package:quran/presentation/providers/router/router_provider.dart';
import 'package:quran/presentation/providers/surah_data/all_surah_data_provider.dart';

class OnBoardingPage extends ConsumerWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quran App',
              style: TextStyle(
                fontSize: 28,
                color: hard,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(16),
            const Text(
              'Learn Quran and',
              style: TextStyle(
                fontSize: 18,
                color: grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Recite once everyday',
              style: TextStyle(
                fontSize: 18,
                color: grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            verticalSpace(49),
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/images/onboarding.svg'),
                    verticalSpace(25)
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: 185,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: orange),
                      onPressed: () {
                        ref.read(allSurahDataProvider.notifier).getAllSurah();
                        ref.read(routerProvider).pushNamed('home');
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          color: white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
