import 'package:flutter/material.dart';

import '../../../business_logic/models/experience_item.dart';
import '../../../config/constants/responsive_breakpoints.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Experience',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        ExperienceCards()
      ],
    );
  }
}

class ExperienceCards extends StatelessWidget {
  ExperienceCards({Key? key}) : super(key: key);

  final List<ExperienceItem> experiences = [
    const ExperienceItem(
      companyName: 'Globant',
      position: 'Specialist Engineer [Flutter Dev]',
      period: '2021 - 2023',
    ),
    const ExperienceItem(
      companyName: 'Rockers App, Coffee Blak, Epicx',
      position: 'Maker of',
      period: '2019 - Now',
    ),
    const ExperienceItem(
      companyName: 'AstraZeneca',
      position: 'SAP ABAP Lead',
      period: '2015 - 2019',
    ),
    const ExperienceItem(
      companyName: 'Hyundai',
      position: 'SAP IT Specialist',
      period: '2014 - 2015',
    ),
    const ExperienceItem(
      companyName: 'Deloitte',
      position: 'SAP ABAP Jr. Lead',
      period: '2010 - 2014',
    ),
    const ExperienceItem(
      companyName: 'Grupo 2X',
      position: 'SAP ABAP Analyst',
      period: '2009 - 2010',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          experiences.length,
          (index) => Card(
            child: Container(
              height: 180.0,
              width: 250.0,
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    experiences[index].companyName,
                  ),
                  Text(
                    experiences[index].position,
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    experiences[index].period,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
