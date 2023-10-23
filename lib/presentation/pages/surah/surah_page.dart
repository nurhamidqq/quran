import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/presentation/misc/constants.dart';
import 'package:quran/presentation/misc/extentions.dart';
import 'package:quran/presentation/misc/methods.dart';
import 'package:quran/presentation/providers/audio_data/audio_data_provider.dart';
import 'package:quran/presentation/providers/surah_data/surah_data_provider.dart';
import 'package:quran/presentation/services/shared_preferences.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SurahPage extends ConsumerStatefulWidget {
  final Surah surah;
  const SurahPage({super.key, required this.surah});

  @override
  ConsumerState<SurahPage> createState() => _SurahPage();
}

class _SurahPage extends ConsumerState<SurahPage> {
  final AutoScrollController _sccontroller = AutoScrollController();

  @override
  void dispose() {
    super.dispose();
    _sccontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        surfaceTintColor: white,
        backgroundColor: white,
        scrolledUnderElevation: 0,
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
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: SvgPicture.asset(
                      'assets/images/back-icon.svg',
                      width: 24,
                    ),
                  ),
                  horizontalSpace(24),
                  Text(
                    widget.surah.nama_latin,
                    style: const TextStyle(
                      fontSize: 20,
                      color: hard,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.display_settings,
                color: hard,
              )
            ],
          ),
        ),
      ),
      body: StreamBuilder(
          stream: ref.read(audioDataProvider.notifier).playing(),
          builder: (context, snapshot) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: switch (ref.watch(surahDataProvider)) {
                    AsyncData(value: final surah) => ListView(
                        controller: _sccontroller,
                        children: [
                          verticalSpace(16),
                          Stack(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 28),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    begin: Alignment(-1.0, 0.0),
                                    end: Alignment(1.0, 0.0),
                                    colors: [
                                      Color(0xFFDF98FA),
                                      Color(0xFF9055FF),
                                    ],
                                    transform: GradientRotation(math.pi / 4),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      surah?.nama_latin ?? '',
                                      style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                        color: white,
                                      ),
                                    ),
                                    verticalSpace(8),
                                    Text(
                                      surah?.arti ?? '',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white,
                                      ),
                                    ),
                                    verticalSpace(16),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 64),
                                      child: Divider(
                                        height: 0,
                                      ),
                                    ),
                                    verticalSpace(16),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          (surah?.tempat_turun ?? '')
                                              .toUpperCase(),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: white,
                                          ),
                                        ),
                                        horizontalSpace(5),
                                        const CircleAvatar(
                                            maxRadius: 4,
                                            backgroundColor: darkGrey),
                                        horizontalSpace(5),
                                        Text(
                                          '${surah?.jumlah_ayat} AYAT',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpace(32),
                                    SvgPicture.asset(
                                        'assets/images/basmallah-logo.svg')
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/quran-big.png',
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(8),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: surah?.ayat.length ?? 0,
                            separatorBuilder: (context, index) => Column(
                              children: [
                                verticalSpace(16),
                                const Divider(height: 0, color: darkGrey),
                              ],
                            ),
                            itemBuilder: (context, index) {
                              final ayat = surah?.ayat[index];
                              return AutoScrollTag(
                                controller: _sccontroller,
                                key: ValueKey(ayat?.nomor),
                                index: index,
                                child: Column(
                                  children: [
                                    verticalSpace(24),
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 13, vertical: 10),
                                        decoration: BoxDecoration(
                                            color: softGrey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 27,
                                              height: 27,
                                              child: CircleAvatar(
                                                backgroundColor: hard,
                                                child: Text(
                                                  "${ayat?.nomor}",
                                                  style: const TextStyle(
                                                    color: white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/images/share-icon.svg'),
                                                horizontalSpace(16),
                                                playAudio(
                                                    index, surah, snapshot),
                                                horizontalSpace(16),
                                                SvgPicture.asset(
                                                    'assets/images/bookmarks-icon.svg'),
                                              ],
                                            )
                                          ],
                                        )),
                                    verticalSpace(24),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        ayat?.ar ?? '',
                                        textDirection: TextDirection.rtl,
                                        textScaleFactor: 1.8,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'LPMQ Isep Misbah',
                                          height: 2,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    verticalSpace(16),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        (ayat?.tr ?? '').toCapitalized(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: black,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    verticalSpace(16),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        ayat?.idn ?? '',
                                        style: const TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    if (surah?.ayat.length == index + 1)
                                      if (snapshot.hasData &&
                                          snapshot.data!.playing)
                                        verticalSpace(100),
                                    verticalSpace(16)
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    _ => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  },
                ),
                if (snapshot.hasData &&
                    snapshot.data?.processingState == ProcessingState.ready)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: hard.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //horizontalSpace(24),
                          const Icon(Icons.volume_up, color: white),
                          const Icon(Icons.skip_previous, color: white),
                          snapshot.data!.playing
                              ? IconButton(
                                  icon: const Icon(
                                      Icons.pause_circle_outline_outlined),
                                  color: white,
                                  iconSize: 40,
                                  onPressed: () => ref
                                      .read(audioDataProvider.notifier)
                                      .pause(),
                                )
                              : IconButton(
                                  icon: const Icon(
                                    Icons.play_circle_outline_outlined,
                                  ),
                                  color: white,
                                  iconSize: 40,
                                  onPressed: () => ref
                                      .read(audioDataProvider.notifier)
                                      .resume(),
                                ),
                          const Icon(Icons.skip_next, color: white),
                          GestureDetector(
                              onTap: () =>
                                  ref.read(audioDataProvider.notifier).stop(),
                              child: const Icon(Icons.stop, color: white)),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          }),
    );
  }

  Widget playAudio(
      int index, Surah? surah, AsyncSnapshot<PlayerState> snapshot) {
    return switch (ref.watch(audioDataProvider)) {
      AsyncData(:final value) => StreamBuilder(
          stream: ref.read(audioDataProvider.notifier).stream(),
          builder: (context, play) {
            if (snapshot.data?.processingState == ProcessingState.ready) {
              if (play.hasData) {
                if (value.isNotEmpty &&
                    play.data == index &&
                    value.keys.first == surah?.nomor) {
                  LocalStorage().ayat = ((play.data ?? 0) + 1).toString();
                  // final contentSize =
                  //     _sccontroller.position.viewportDimension +
                  //         _sccontroller.position.maxScrollExtent;
                  // final index = play.data ?? 0;
                  // int itemHeight = 0;
                  // if (surah!.ayat![play.data!].ar.length > 50) {
                  //   itemHeight = 50;
                  // } else {
                  //   itemHeight = surah.ayat![play.data!].ar.length;
                  // }
                  // final target = (contentSize + itemHeight) *
                  //     index /
                  //     (surah.jumlah_ayat + 1);
                  // print('snap${target}');
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    _sccontroller.scrollToIndex(index,
                        duration: const Duration(seconds: 2),
                        preferPosition: AutoScrollPosition.begin);
                    // if (_sccontroller.hasClients) {
                    //   _sccontroller.animateTo(
                    //     target,
                    //     duration: const Duration(seconds: 2),
                    //     curve: Curves.fastOutSlowIn,
                    //   );
                    // }
                  });
                  return InkWell(
                      onTap: () => ref.read(audioDataProvider.notifier).stop(),
                      child: const Icon(
                        Icons.stop_circle_outlined,
                        color: soft,
                      ));
                }
                return InkWell(
                    onTap: () => ref.read(audioDataProvider.notifier).play(
                          surah: surah!,
                          index: index,
                          noSurah: surah.nomor,
                        ),
                    child: SvgPicture.asset('assets/images/play-icon.svg'));
              }
              return SvgPicture.asset('assets/images/play-icon.svg');
            }
            return InkWell(
              onTap: () => ref
                  .read(audioDataProvider.notifier)
                  .play(surah: surah!, index: index, noSurah: surah.nomor),
              child: SvgPicture.asset('assets/images/play-icon.svg'),
            );
          },
        ),
      AsyncLoading() =>
        const SizedBox(width: 18, child: CupertinoActivityIndicator()),
      _ => SvgPicture.asset('assets/images/play-icon.svg')
    };
  }
}
