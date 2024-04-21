import 'package:flutter/material.dart';
import 'package:mhyshop/textstyle.dart';

class ListTileTransactionHistory extends StatelessWidget {
  ListTileTransactionHistory({
    super.key,
    required this.imgLead,
    required this.title,
    required this.date,
    required this.price,
    required this.type,
  });

  String imgLead;
  String title;
  String date;
  String price;
  String type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey[400],
        child: Image.asset(
          imgLead,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: largetextmedium(),
          ),
          Text(
            date,
            style: mediumtextregular(),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            price,
            style: largetextmedium(),
          ),
          Text(
            type,
            style: type != "Order"
                ? mediumtextregular(color: Colors.green)
                : mediumtextregular(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
