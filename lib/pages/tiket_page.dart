import 'package:flutter/material.dart';
import 'package:nonton_id/ticket_screen/ticket1_screen.dart';
import 'package:nonton_id/ticket_screen/ticket2_screen.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({Key? key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      tabs: <Widget>[
        Tab(text: 'Sedang Tayang'),
        Tab(text: 'Akan Datang'),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF1c1a29),
            automaticallyImplyLeading: true,
            title: const Center(
              child: Text(
                'Daftar Film',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Open',
                  color: Colors.white,
                ),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child:
                    Container(color: const Color(0xFF1c1a29), child: myTabBar)),
          ),
          body: const TabBarView(
            children: <Widget>[
              MyTicket1(),
              MyTicket2(),
            ],
          ),
        ),
      ),
    );
  }
}
