import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhyshop/textstyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
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
            Container(
              margin: const EdgeInsets.all(16),
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
