import 'package:flutter/material.dart';

import 'components/list_scroll_view.dart';

class AppListView extends StatelessWidget {
  const AppListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text('Tasks List', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),),
      ),

      body: const ListScrollView(),
    );
  }
}


