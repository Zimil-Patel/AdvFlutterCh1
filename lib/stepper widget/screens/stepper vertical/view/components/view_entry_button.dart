import 'package:flutter/material.dart';

class ViewEntryButton extends StatelessWidget {
  const ViewEntryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      shape: const CircleBorder(),
      onPressed: () {

      },
      child: const Icon(Icons.list, color: Colors.white,),
    );
  }
}