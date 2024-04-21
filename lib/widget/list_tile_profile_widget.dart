import 'package:flutter/material.dart';

class ListTileProfilePage extends StatelessWidget {
  ListTileProfilePage(
      {super.key, required this.iconLead, required this.titleWidget});

  Widget titleWidget;
  Widget iconLead;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
      leading: iconLead,
      title: titleWidget,
      trailing: Image.asset('assets/icon/forward.png'),
    );
  }
}
