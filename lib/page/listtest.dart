import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mhyshop/page/home_page.dart';
import 'package:mhyshop/textstyle.dart';

class ListTest extends StatefulWidget {
  ListTest({super.key});

  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  final List categoryProduct = [
    'All',
    'Clothes',
    'Shoes',
    'Bags',
    'Electronics',
    'Watches',
    'Jewerlies',
    'Kitchens',
    'Toys'
  ];

  String selectedCategoryProduct = 'All';

  // custom
  late ScrollController _scrollController;
  double _expandedHeight = 310.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      // Contoh: Ubah expandedHeight ketika posisi scroll mencapai batas tertentu
      if (_scrollController.offset >= 90) {
        _expandedHeight = 50.0;
      } else {
        _expandedHeight = 310.0;
      }
      log('ini mhamdany ${_scrollController.offset}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverPersistentHeader(
                floating: true,
                delegate: MyCustomSliverAppBar(
                  expandedHeight: 100,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/img/me.jpeg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Selamat Pagi 👋",
                                  style: subtitleregular(),
                                ),
                                Text("M. Hamdan Yusuf", style: h4medium()),
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/icon/notification_outlined.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/icon/heart_outlined.png'),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                floating: true,
                pinned: true,
                delegate: MyCustomSliverAppBar(
                  expandedHeight: 80,
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset('assets/icon/search.png'),
                          Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child:
                                      Text("Cari", style: largetextregular()))),
                          Image.asset('assets/icon/slider.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                floating: true,
                delegate: MyCustomSliverAppBar(
                  expandedHeight: _expandedHeight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Special Offers',
                              style: subtitlesemibold(),
                            ),
                            Text(
                              'See All',
                              style: subtitlemedium(),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryProductWidget(
                                img: 'assets/icon/clothes_filled.png',
                                title: 'Clothes',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/shoes_filled.png',
                                title: 'Shoes',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/bag_filled.png',
                                title: 'Bag',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/electronic_filled.png',
                                title: 'Electronic',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryProductWidget(
                                img: 'assets/icon/watch_filled.png',
                                title: 'Watch',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/jewerly_filled.png',
                                title: 'Jewerly',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/kitchen_filled.png',
                                title: 'Kitchen',
                              ),
                              CategoryProductWidget(
                                img: 'assets/icon/toys_filled.png',
                                title: 'Toys',
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Most Popular',
                              style: subtitlesemibold(),
                            ),
                            Text(
                              'See All',
                              style: subtitlemedium(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: categoryProduct.map((tag) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: ChoiceChip(
                                  label: Text(tag),
                                  selected: selectedCategoryProduct == tag,
                                  labelStyle:
                                      selectedCategoryProduct.contains(tag)
                                          ? mediumtextbold(color: Colors.white)
                                          : mediumtextbold(color: Colors.black),
                                  selectedColor:
                                      selectedCategoryProduct.contains(tag)
                                          ? Colors.black
                                          : Colors.white,
                                  checkmarkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      child: GridView.count(
                        childAspectRatio: 0.70,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: [
                          for (int i = 0; i < 10; i++)
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 13),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      'assets/icon/heart_outlined.png',
                                      alignment: Alignment.topRight,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Image.asset(
                                        'assets/product/sandal.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'High Hills Gucci',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: subtitleregular(),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/half_star.png',
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '4.5 | 2000 sold',
                                        style: smalltextregular(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Rp. 500.000',
                                    style: largetextsemibold(),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Widget? child;

  MyCustomSliverAppBar({
    required this.expandedHeight,
    this.child,
  });

  @override
  double get minExtent => kToolbarHeight;

  @override
  double get maxExtent => expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 18),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          if (child != null) child!,
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(MyCustomSliverAppBar oldDelegate) {
    return expandedHeight != oldDelegate.expandedHeight ||
        child != oldDelegate.child;
  }
}
