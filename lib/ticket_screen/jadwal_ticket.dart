import 'package:flutter/material.dart';

class JadwalTicket extends StatefulWidget {
  const JadwalTicket({Key? key}) : super(key: key);

  @override
  State<JadwalTicket> createState() => _JadwalTicketState();
}

class _JadwalTicketState extends State<JadwalTicket> {
  // List of dates and their descriptions
  List<Map<String, String>> dates = [
    {"day": "Mon", "description": "Monday"},
    {"day": "Tue", "description": "Tuesday"},
    {"day": "Wed", "description": "Wednesday"},
    {"day": "Thu", "description": "Thursday"},
    {"day": "Fri", "description": "Friday"},
    {"day": "Sat", "description": "Saturday"},
    {"day": "Sun", "description": "Sunday"},
  ];

  // Index of the selected date
  int selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Fast & Furious 9',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Open',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        backgroundColor: const Color(0xFF2F2C44),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: const Color(0xFF1c1a29),
        child: SafeArea(
          child: Column(
            children: [
              schduleList(now),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              search_bar(),
              const SizedBox(
                height: 30,
              ),
              const CustomExpansionTile(
                title: 'CGV',
                subtitle: 'Regular',
                description: 'Rp. 50.000',
                description2:
                    'Ini adalah ticket reguler dengan beebrapa benefit unggulan',
                imagePath: 'assets/images/logo_bioskop.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'CGV',
                subtitle: 'PREMIUM',
                description: 'Rp. 100.000',
                description2:
                    ' Mencoba hal baru, anda akan mengalami, pengalaman bernonton yang beda',
                imagePath: 'assets/images/foto_cinema.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomExpansionTile(
                title: 'CGV',
                subtitle: 'VIP',
                description: 'Rp. 200.000',
                description2: 'Melewati limit-limit yang ada',
                imagePath: 'assets/images/foto_cinema.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GestureDetector search_bar() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 340,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF2F2C44),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Bioskop',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(bottom: 13), // Adjust bottom padding here
                ),
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container schduleList(DateTime now) {
    return Container(
      color: const Color(0xFF1c1a29),
      child: Column(
        children: [
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                DateTime date = now.add(Duration(days: index - now.weekday));
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDateIndex = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    color: selectedDateIndex == index
                        ? Colors.blueGrey
                        : Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dates[index]["day"]!,
                          style: TextStyle(
                            color: selectedDateIndex == index
                                ? Colors.white
                                : Colors.grey,
                            fontSize: selectedDateIndex == index
                                ? 20
                                : 16, // Increase font size for selected date
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: selectedDateIndex == index
                                ? Colors.white
                                : Colors.grey,
                            fontSize: selectedDateIndex == index
                                ? 20
                                : 16, // Increase font size for selected date
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String description2;
  final String imagePath;

  const CustomExpansionTile({
    Key? key,
    required this.description2,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: SizedBox(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Image.asset(
                  imagePath,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            description2,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
