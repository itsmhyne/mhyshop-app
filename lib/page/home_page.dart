import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mhyshop/textstyle.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Image.asset('assets/icon/search.png'),
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Cari", style: largetextregular()))),
                    Image.asset('assets/icon/slider.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
                        labelStyle: selectedCategoryProduct.contains(tag)
                            ? mediumtextbold(color: Colors.white)
                            : mediumtextbold(color: Colors.black),
                        selectedColor: selectedCategoryProduct.contains(tag)
                            ? Colors.black
                            : Colors.white,
                        checkmarkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onSelected: (isSelected) {
                          setState(() {
                            selectedCategoryProduct == tag;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                childAspectRatio: 0.70,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryProductWidget extends StatelessWidget {
  CategoryProductWidget({super.key, required this.img, required this.title});

  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
          child: Image.asset(img),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: mediumtextregular(),
        )
      ],
    );
  }
}
