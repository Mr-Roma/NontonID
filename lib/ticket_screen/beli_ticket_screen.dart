import 'package:flutter/material.dart';
import 'package:nonton_id/ticket_screen/jadwal_ticket.dart';

class BeliTicket extends StatelessWidget {
  final String judul;
  const BeliTicket({super.key, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          judul,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Open',
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        backgroundColor: const Color(0xFF2F2C44),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: const Color(0xFF1c1a29),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.9), BlendMode.modulate),
                    child: Image.asset(
                      'assets/images/vector.png',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: const Color(0xFF2F2C44),
                  child: const Text(
                    'LAYAR',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SeatCardReady1(),
                      SeatCardReady2(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 20,
                          height: 20,
                          color: const Color.fromARGB(255, 81, 79, 100),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tersedia',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 20,
                          height: 20,
                          color: const Color.fromARGB(255, 57, 57, 60),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tidak Tersedia',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: 20,
                          height: 20,
                          color: const Color.fromARGB(255, 108, 97, 175),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dipilih',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 256,
                    color: const Color.fromARGB(255, 47, 44, 68),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_city,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'CGV Pamulang Barat',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Open'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 98,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Jam',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Open'),
                                        ),
                                        Text(
                                          '16:00',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Open'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 98,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: const Column(
                                      children: [
                                        Text(
                                          'Tanggal',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Open'),
                                        ),
                                        Text('24 Juni',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Open')),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 98,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey)),
                                    child: const Column(
                                      children: [
                                        Text('Kelas',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Open')),
                                        Text('Regular',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Open')),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('3 Kursi Dipilih',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Open')),
                                Text('A10, A13, A13',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Open')),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Open')),
                                Text('RP.150,000',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Open')),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 108, 97, 175),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust the value for desired roundness
                                ),
                                minimumSize: const Size(330,
                                    47), // Set the minimum size of the button
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => JadwalTicket()),
                                  );
                                },
                                child: const Text(
                                  'Beli Ticket',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Pushes the text t
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SeatCardReady1 extends StatelessWidget {
  const SeatCardReady1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: [
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class SeatCardReady2 extends StatelessWidget {
  const SeatCardReady2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: [
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SeatCard(
            seatTexts: ['A13', 'A13', 'A13', 'A13', 'A13'],
            seatColors: [
              Color.fromARGB(255, 81, 79, 100),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 108, 97, 175),
              Color.fromARGB(255, 40, 38, 51),
              Color.fromARGB(255, 81, 79, 100),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class SeatCard extends StatelessWidget {
  final List<String> seatTexts;
  final List<Color> seatColors;

  const SeatCard({
    Key? key,
    required this.seatTexts,
    required this.seatColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(seatTexts.length == seatColors.length);

    return Row(
      children: List.generate(
        seatTexts.length,
        (index) {
          return SeatCardItem(
            text: seatTexts[index],
            color: seatColors[index],
          );
        },
      ).expand((widget) => [widget, const SizedBox(width: 12)]).toList(),
    );
  }
}

class SeatCardItem extends StatelessWidget {
  final String text;
  final Color color;

  const SeatCardItem({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 30,
        height: 30,
        color: color,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 142, 128, 128),
                fontFamily: 'Open',
                fontSize: 11),
          ),
        ),
      ),
    );
  }
}
