import 'package:flutter/material.dart';
import 'package:nonton_id/ticket_screen/beli_ticket_screen.dart';

class TicketWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String director;
  final String writer;
  final Widget redirectPage;

  const TicketWidget(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.director,
      required this.writer,
      required this.redirectPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 210,
          child: Image.asset(
            imagePath,
            width: 130, // Adjust image width as needed
            height: 300, // Adjust image height as needed
          ),
        ),
        const SizedBox(width: 10), // Add space between image and text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Open',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Director',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      director,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Writer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      writer,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 95),
                  child: SizedBox(
                    width: 115,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    redirectPage)); // Add your action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6956E3),
                      ),
                      child: const Text(
                        'Beli Ticket',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Example of how to use the custom widget:
class MyTicket2 extends StatelessWidget {
  const MyTicket2({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TicketWidget(
              imagePath: 'assets/images/image13.png',
              title: 'Petualangan Sherina 2',
              director: 'Rian Johnson',
              writer: 'Rian Johnson',
              redirectPage: BeliTicket(judul: 'Petualangan Sherina 2'),
            ),
            TicketWidget(
              imagePath: 'assets/images/image14.png',
              title: 'The Marvels',
              director: 'Rian Johnson',
              writer: 'Rian Johnson',
              redirectPage: BeliTicket(judul: 'The Marvels'),
            ),
            TicketWidget(
              imagePath: 'assets/images/image15.png',
              title: 'Despicable ME 2',
              director: 'Rian Johnson',
              writer: 'Rian Johnson',
              redirectPage: BeliTicket(judul: 'Despicable ME 2'),
            ),
          ],
        ),
      ),
    );
  }
}
