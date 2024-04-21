import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhyshop/textstyle.dart';
import 'package:mhyshop/widget/list_tile_transaction_history.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Image.asset('assets/icon/m_logo.png'),
            title: Text(
              'My E-Wallet',
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
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'M. Hamdan Yusuf',
                      style: subtitlebold(color: Colors.white),
                    ),
                    Text(
                      '112 *** *** *** 212',
                      style: mediumtextregular(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Your Balance',
                      style: mediumtextregular(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp. 1.000',
                          style: h2bold(color: Colors.white),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "+ Top Up",
                            style: mediumtextmedium(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: subtitlesemibold(),
                  ),
                  Text(
                    'See All',
                    style: subtitlemedium(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTileTransactionHistory(
                imgLead: 'assets/icon/wallet_outlined.png',
                title: 'Top Up E-Wallet',
                date: 'Nov, 2 2023 | 02:11 PM',
                price: 'Rp. 1.000',
                type: 'Top Up',
              ),
              ListTileTransactionHistory(
                imgLead: 'assets/product/vga.jpg',
                title:
                    'VGA Card Gigabyte GeForce RTX 4060 WINDFORCE OC 8G - 8GB GDDR6',
                date: 'Nov, 2 2023 | 02:11 AM',
                price: 'Rp. 5.219.000',
                type: 'Order',
              ),
              ListTileTransactionHistory(
                imgLead: 'assets/product/monitor.jpg',
                title: 'MONITOR GAMING MSI Curve Optix MAG241C 144Hz FHD 23,6"',
                date: 'Nov, 2 2023 | 02:11 PM',
                price: 'Rp. 2.240.000',
                type: 'Order',
              ),
              ListTileTransactionHistory(
                imgLead: 'assets/icon/wallet_outlined.png',
                title: 'Top Up E-Wallet',
                date: 'Nov, 2 2023 | 02:11 PM',
                price: 'Rp. 7.459.000',
                type: 'Top Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
