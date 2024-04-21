import 'package:flutter/material.dart';
import 'package:mhyshop/page/order_completed.dart';
import 'package:mhyshop/page/order_ongoing.dart';
import 'package:mhyshop/textstyle.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _titleTab = [
      const Tab(
        text: 'Ongoing',
      ),
      const Tab(
        text: 'Completed',
      ),
    ];

    final _pagesTab = [OrderOngoing(), OrderCompleted()];

    return DefaultTabController(
      length: _titleTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Image.asset('assets/icon/m_logo.png'),
              title: Text(
                'My Orders',
                style: h3medium(),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icon/search.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/icon/view_more_outlined.png')
                ],
              )),
          bottom: TabBar(
            tabs: _titleTab,
            indicatorColor: Colors.black,
            labelStyle: largetextmedium(),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
        body: TabBarView(children: _pagesTab),
      ),
    );
  }
}
