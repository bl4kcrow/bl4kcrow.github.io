import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '/business_logic/controllers/menu_controller.dart';
import '/config/constants/responsive_breakpoints.dart';
import '../widgets/sections/contact_section.dart';
import '../widgets/sections/experience_section.dart';
import '../widgets/sections/footer.dart';
import '../widgets/sections/header.dart';
import '../widgets/sections/profile_image.dart';
import '../widgets/sections/profile_info.dart';
import '../widgets/sections/rockers_project_section.dart';
import '../widgets/utils/max_width_container.dart';
import '../widgets/utils/responsive_layout.dart';
import '../widgets/utils/side_manu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AutoScrollController _autoScrollController = AutoScrollController();
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _menuController.scaffoldKey,
      drawer: SideMenu(
        autoScrollController: _autoScrollController,
      ),
      body: SingleChildScrollView(
        controller: _autoScrollController,
        padding: const EdgeInsets.all(kDefaultPadding),
        child: MaxWidthContainer(
          child: ResponsiveLayout(
            mobileScreen: MobileContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
            tabletScreen: TabletContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
            desktopScreen: DesktopContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
          ),
        ),
      ),
    );
  }
}

class MobileContent extends StatelessWidget {
  const MobileContent({
    required this.autoScrollController,
    required this.menuController,
    Key? key,
  }) : super(key: key);

  final AutoScrollController autoScrollController;
  final MenuController menuController;

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: const ProfileImage(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          const ProfileInfo(),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: const ExperienceSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: const RockersProjectSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: const ContactSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          const Footer(),
        ],
      ),
    );
  }
}

class TabletContent extends StatelessWidget {
  const TabletContent({
    required this.autoScrollController,
    required this.menuController,
    Key? key,
  }) : super(key: key);

  final AutoScrollController autoScrollController;
  final MenuController menuController;

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProfileImage(),
                SizedBox(width: kSpaceBetweenSections * 2),
                Expanded(child: ProfileInfo()),
              ],
            ),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: const ExperienceSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: const RockersProjectSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: const ContactSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          const Footer(),
        ],
      ),
    );
  }
}

class DesktopContent extends StatelessWidget {
  const DesktopContent({
    required this.autoScrollController,
    required this.menuController,
    Key? key,
  }) : super(key: key);

  final AutoScrollController autoScrollController;
  final MenuController menuController;

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProfileImage(),
                SizedBox(width: kSpaceBetweenSections * 2),
                Expanded(child: ProfileInfo()),
              ],
            ),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: const ExperienceSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: const RockersProjectSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: const ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: const ContactSection(),
          ),
          const SizedBox(height: kSpaceBetweenSections),
          const Footer(),
        ],
      ),
    );
  }
}
