import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhyshop/textstyle.dart';
import 'package:mhyshop/widget/list_tile_profile_widget.dart';

class PorfilePage extends StatelessWidget {
  const PorfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Image.asset('assets/icon/m_logo.png'),
            title: Text(
              'Profile',
              style: h3medium(),
            ),
            trailing: Image.asset('assets/icon/view_more_outlined.png')),
      ),
      body: Expanded(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/img/me.jpeg'),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Image.asset(
                          'assets/icon/pencil_outlined.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'M. Hamdan Yusuf',
                style: h3medium(),
              ),
            ),
            Center(
              child: Text(
                '+6289 *** *** 212',
                style: mediumtextregular(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/profile_outlined.png'),
                titleWidget: Text(
                  'Edit Profile',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/location_outlined.png'),
                titleWidget: Text(
                  'Address',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/notification_outlined.png'),
                titleWidget: Text(
                  'Notification',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/wallet_outlined.png'),
                titleWidget: Text(
                  'Payment',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/translation_outlined.png'),
                titleWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Language',
                      style: subtitlemedium(),
                    ),
                    Text(
                      'English (US)',
                      style: subtitlemedium(),
                    ),
                  ],
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/eye_outlined.png'),
                titleWidget: Text(
                  'Dark Mode',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
                iconLead: Image.asset('assets/icon/help_outlined.png'),
                titleWidget: Text(
                  'Help Center',
                  style: subtitlemedium(),
                )),
            ListTileProfilePage(
              iconLead: Image.asset('assets/icon/logout_outlined.png'),
              titleWidget: Text(
                'Logout',
                style: subtitlemedium(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
