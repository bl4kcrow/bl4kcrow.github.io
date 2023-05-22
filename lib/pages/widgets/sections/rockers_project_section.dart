import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../config/constants/responsive_breakpoints.dart';

class RockersProjectSection extends StatelessWidget {
  const RockersProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Rockers Rock Music Project',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          'Spreading with passion the Rock sounds. '
          'New and oldies rock songs, recommendations, charts from radio stations and magazines.',
          softWrap: true,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                child: Container(
                  height: 220.0,
                  width: 250.0,
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      const Text(
                        'Rockers Rock Music Channel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      SvgPicture.asset('images/logos/tiktok-logo.svg'),
                      const Text(
                        'TikTok',
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          const url =
                              'https://www.tiktok.com/@rockersrockmusic';
                          if (await canLaunchUrlString(
                            url,
                          )) {
                            await launchUrlString(
                              url,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text(
                          'Watch',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 220.0,
                  width: 250.0,
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      const Text(
                        'Rockers Rock Music Channel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      SvgPicture.asset('images/logos/youtube-logo.svg'),
                      const Text(
                        'YouTube',
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          const url =
                              'https://www.youtube.com/c/RockersRockMusic';
                          if (await canLaunchUrlString(
                            url,
                          )) {
                            await launchUrlString(
                              url,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text(
                          'Watch',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 220.0,
                  width: 250.0,
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      const Text(
                        'Rockers Rock Music Application',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      SvgPicture.asset(
                        'images/logos/google-play-logo.svg',
                      ),
                      const Text(
                        'Google Play Store',
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          const url =
                              'https://play.google.com/store/apps/details?id=com.bl4ckcrow.rockers';
                          if (await canLaunchUrlString(
                            url,
                          )) {
                            await launchUrlString(
                              url,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text(
                          'Download',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
