import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/presentation/misc/constants.dart';
import 'package:quran/presentation/misc/methods.dart';

class SurahWidget extends StatelessWidget {
  final void Function() onTap;
  final Surah surah;
  const SurahWidget({super.key, required this.onTap, required this.surah});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset('assets/images/border.svg'),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          surah.nomor.toString(),
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      ),
                    )
                  ],
                ),
                horizontalSpace(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surah.namaLatin,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: black),
                    ),
                    Row(
                      children: [
                        Text(
                          surah.tempatTurun.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey,
                          ),
                        ),
                        horizontalSpace(5),
                        const CircleAvatar(
                            maxRadius: 4, backgroundColor: darkGrey),
                        horizontalSpace(5),
                        Text(
                          '${surah.jumlahAyat} Ayat',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: grey,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Text(
              surah.nama,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: hard,
              ),
            )
          ],
        ),
      ),
    );
  }
}
