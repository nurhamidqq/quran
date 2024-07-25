import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/presentation/misc/constants.dart';
import 'package:quran/presentation/misc/methods.dart';
import 'package:quran/presentation/providers/audio_data/audio_data_provider.dart';
import 'package:quran/presentation/providers/router/router_provider.dart';
import 'package:quran/presentation/providers/surah_data/all_surah_data_provider.dart';
import 'package:quran/presentation/providers/surah_data/surah_data_provider.dart';
import 'package:quran/presentation/services/shared_preferences.dart';
import 'package:quran/presentation/widgets/bottom_nav_bar.dart';
import 'package:quran/presentation/widgets/bottom_nav_bar_item.dart';
import 'package:quran/presentation/widgets/surah_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  PageController pageController = PageController();
  // final ScrollController _controller = ScrollController();
  int selectedPage = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listSurah = ref.read(allSurahDataProvider).value;
    // ref.listen(surahDataProvider, (previous, next) {
    //   if (next is AsyncData && next.value != null) {
    //     data = next.value;
    //   } else if (next is AsyncError) {
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text(next.error.toString())));
    //   } else {
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text('entahlah')));
    //   }
    // });
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        surfaceTintColor: white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/menu-icon.svg',
                    width: 24,
                  ),
                  horizontalSpace(24),
                  const Text(
                    'Quran App',
                    style: TextStyle(
                      fontSize: 20,
                      color: hard,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              SvgPicture.asset(
                'assets/images/search-icon.svg',
                width: 24,
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(24),
                    const Text(
                      'Assalamualaikum',
                      style: TextStyle(
                        color: grey,
                        fontSize: 18,
                      ),
                    ),
                    verticalSpace(4),
                    const Text(
                      'Hamba Allah',
                      style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpace(24),
                    Visibility(
                      visible: listSurah != null,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment(-1.0, 0.0),
                                end: Alignment(1.0, 0.0),
                                colors: [
                                  Color(0xFFFA98D7),
                                  Color(0xFF9055FF),
                                ],
                                transform: GradientRotation(math.pi / 2.5),
                              ),
                            ),
                            height: 135,
                            width: double.infinity,
                          ),
                          Positioned(
                              top: 19,
                              left: 20,
                              bottom: 19,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/book-icon.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      horizontalSpace(8),
                                      const Text(
                                        'Last Playing',
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  lastRead(listSurah),
                                ],
                              )),
                          Positioned(
                            top: 34,
                            right: -33,
                            width: 206,
                            height: 126,
                            child: SvgPicture.asset('assets/images/quran.svg'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              verticalSpace(24),
              TabBar(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                controller: _tabController,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                unselectedLabelStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, color: grey),
                tabs: const [
                  Tab(text: 'Surah'),
                  Tab(text: 'Para'),
                  Tab(text: 'Page'),
                  Tab(text: 'Hijb')
                ],
              ),
              Expanded(
                  child: TabBarView(
                controller: _tabController,
                children: [
                  switch (ref.watch(allSurahDataProvider)) {
                    AsyncData(:final value) => ListView.separated(
                        shrinkWrap: true,
                        itemCount: value.length,
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Divider(height: 0),
                        ),
                        itemBuilder: (context, index) {
                          if (value.last == value[index]) {
                            return Column(
                              children: [
                                SurahWidget(
                                  onTap: () {
                                    ref
                                        .read(surahDataProvider.notifier)
                                        .getSurah(nomor: value[index].nomor);
                                    ref
                                        .read(routerProvider)
                                        .goNamed('surah', extra: value[index]);
                                  },
                                  surah: value[index],
                                ),
                                verticalSpace(80),
                              ],
                            );
                          }
                          return SurahWidget(
                            onTap: () {
                              ref
                                  .read(routerProvider)
                                  .goNamed('surah', extra: value[index]);
                              ref
                                  .read(surahDataProvider.notifier)
                                  .getSurah(nomor: value[index].nomor);
                            },
                            surah: value[index],
                          );
                        },
                      ),
                    _ => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  },
                  const Center(
                    child: Text(
                      'Isi Tab Para',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
          BottomNavBar(
              items: [
                BottomNavBarItem(
                    index: 0,
                    isSelected: selectedPage == 0,
                    image: 'assets/images/home-icon.svg'),
                BottomNavBarItem(
                    index: 1,
                    isSelected: selectedPage == 1,
                    image: 'assets/images/idea-icon.svg'),
                BottomNavBarItem(
                    index: 2,
                    isSelected: selectedPage == 2,
                    image: 'assets/images/sholat-icon.svg'),
                BottomNavBarItem(
                    index: 3,
                    isSelected: selectedPage == 3,
                    image: 'assets/images/pray-icon.svg'),
                BottomNavBarItem(
                    index: 4,
                    isSelected: selectedPage == 4,
                    image: 'assets/images/bookmark-icon.svg'),
              ],
              onTap: (index) async {
                // String data = await DefaultAssetBundle.of(context)
                //     .loadString("assets/doa/doaharian.json");
                // final jsonResult = jsonDecode(data);
                // print(jsonResult);
              },
              selectedIndex: 0)
        ],
      ),
    );
  }

  Widget lastRead(List<Surah>? listSurah) {
    return switch (ref.watch(audioDataProvider)) {
      AsyncData(:final value) => StreamBuilder(
          stream: ref.read(audioDataProvider.notifier).playing(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return StreamBuilder(
                stream: ref.read(audioDataProvider.notifier).stream(),
                builder: (context, play) {
                  if (play.hasData && play.data != null) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listSurah
                                  ?.singleWhere((element) =>
                                      element.nomor == value.keys.first)
                                  .namaLatin ??
                              '',
                          style: const TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Ayat No : ${(play.data ?? 0) + 1}',
                              style: const TextStyle(
                                color: white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            snapshot.data!.playing
                                ? IconButton(
                                    icon: const Icon(Icons.headphones),
                                    color: white,
                                    onPressed: () => false,
                                  )
                                : const SizedBox()
                          ],
                        )
                      ],
                    );
                  } else {
                    var lsurah = LocalStorage().surah;
                    if (lsurah != null) {
                      var surah = Surah.fromJson(jsonDecode(lsurah));
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            surah.namaLatin,
                            style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Ayat No : ${LocalStorage().ayat}',
                                style: const TextStyle(
                                  color: white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  }
                },
              );
            }
            return const SizedBox();
          },
        ),
      _ => const SizedBox(),
    };
  }
}
