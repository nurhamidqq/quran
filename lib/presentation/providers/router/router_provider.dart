import 'package:go_router/go_router.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/presentation/pages/home/home_page.dart';
import 'package:quran/presentation/pages/onboarding/onboarding_page.dart';
import 'package:quran/presentation/pages/surah/surah_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/onboarding',
          name: 'onboarding',
          builder: (context, state) => const OnBoardingPage(),
        ),
        GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: 'surah',
                name: 'surah',
                builder: (context, state) {
                  Surah surah = state.extra as Surah;
                  return SurahPage(surah: surah);
                },
              )
            ]),
      ],
      initialLocation: '/onboarding',
      debugLogDiagnostics: false,
    );
