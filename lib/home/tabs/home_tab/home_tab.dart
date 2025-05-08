import 'package:evently/home/tabs/home_tab/widgets/events_list_view.dart';
import 'package:evently/home/tabs/home_tab/widgets/home_tab_header.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTabHeader(),
        EventsListView(),
      ],
    );
  }
}
