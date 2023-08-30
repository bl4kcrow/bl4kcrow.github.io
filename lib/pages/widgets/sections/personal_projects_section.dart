import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../config/constants/responsive_breakpoints.dart';
import '../utils/responsive_layout.dart';

class PersonalProjectsSection extends StatelessWidget {
  const PersonalProjectsSection({Key? key}) : super(key: key);

  Column _pixelBlitzProject(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
          ),
          child: Text(
            'PixelBlitz App - A videogames library.',
            softWrap: true,
            style: TextStyle(
              color: Theme.of(context).shadowColor,
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Card(
          child: SizedBox(
            height: 300.0,
            width: 508.0,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        'images/photos/pixelblitz-function-graph.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  ElevatedButton(
                    onPressed: () async {
                      const url =
                          'https://play.google.com/store/apps/details?id=com.blakcrow.pixelblitz';
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _rockersProject(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
          ),
          child: Text(
            'Rockers Rock Music App - Spreading with passion the Rock sounds.',
            softWrap: true,
            style: TextStyle(
              color: Theme.of(context).shadowColor,
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Card(
          child: SizedBox(
            height: 300.0,
            width: 508.0,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        'images/photos/rockers-function-graph.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
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
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Card(
              child: Container(
                height: 220.0,
                width: 250.0,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    const Text(
                      'Rockers TikTok Channel',
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
                        const url = 'https://www.tiktok.com/@rockersrockmusic';
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
                    ),
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
                      'Rockers YouTube Channel',
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Personal Apps Projects',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        if (ResponsiveLayout.isMobileScreen(context)) ...{
          _rockersProject(context),
          const SizedBox(
            height: kDefaultPadding,
          ),
          _pixelBlitzProject(context),
        },
        if (ResponsiveLayout.isDesktopScreen(context) ||
            ResponsiveLayout.isTabletScreen(context))
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _rockersProject(context),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                _pixelBlitzProject(context),
              ],
            ),
          ),
      ],
    );
  }
}
