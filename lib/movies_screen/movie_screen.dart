import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);
  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 213,
              color: Colors.black,
              child: Stack(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), // Adjust opacity here
                      BlendMode.dstATop,
                    ),
                    child: Image.asset(
                      'assets/images/1.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 213, // To make the image fit the container
                    ),
                  ),
                  Positioned(
                    // Adjust as needed
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white60,
                          size: 55,
                        ),
                      ),
                    ),
                  ),
                  // Add more Positioned widgets for additional icons
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 140),
                  child: Image.asset(
                    'assets/images/image1.png',
                    width: 180,
                    height: 300,
                  ),
                ),
                const SizedBox(width: 10), // Add space between image and text
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 160, right: 40),
                    child: Column(
                      children: [
                        Text(
                          'Star Wars: The Last Jedi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Open',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Director',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Rian Johnson',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Writer',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Rian Johnson',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Genre',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Action, Sci-fi',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'PH',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white30),
                            ),
                            Spacer(flex: 1),
                            Text(
                              'Lucasfilm Ltd.',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 410, left: 10, right: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1c1a29), // Original container color
                          border: Border.all(
                            color: Colors.grey, // Grey border color
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
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
                            Text(
                              '4.5/5.0', // Replace with your text rating
                              style: TextStyle(
                                fontFamily: 'Open',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(
                              0xFF1c1a29), // Original container color
                          border: Border.all(
                            color: Colors.grey, // Grey border color
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Duration', // Replace with your text rating
                                  style: TextStyle(
                                    fontFamily: 'Open',
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '152 Min', // Replace with your text rating
                              style: TextStyle(
                                  fontFamily: 'Open',
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        width: 98,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(
                              0xFF1c1a29), // Original container color
                          border: Border.all(
                            color: Colors.grey, // Grey border color
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'P-G', // Replace with your text rating
                                  style: TextStyle(
                                    fontFamily: 'Open',
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '13+', // Replace with your text rating
                              style: TextStyle(
                                  fontFamily: 'Open',
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'Sinopsis',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Open',
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 240,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF1c1a29),
                            Color(0xFF1c1a29),
                          ],
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 240,
                          ),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.grey, Colors.transparent],
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.dstIn,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 12.0), // Adjust padding as needed
                              child: Text(
                                'Pada saat Resistance terus berjuang melawan kekuatan jahat First Order, Rey, seorang wanita muda yang penuh keingintahuan, menemukan dirinya terlibat dalam pertempuran yang lebih besar dari yang pernah dia bayangkan. Dia mencari pelatihan dari legenda Jedi, Luke Skywalker, yang telah mengasingkan diri di sebuah pulau terpencil. Sementara itu, pertempuran antara Resistance dan First Order semakin memanas, dengan pertarungan epik yang akan menentukan nasib galaksi. Di tengah-tengah konflik ini, rahasia-rahasia masa lalu terungkap, dan keputusan-keputusan sulit harus diambil. Star Wars: The Last Jedi menggabungkan aksi yang mendebarkan, drama emosional, dan petualangan epik dalam sebuah kisah yang menginspirasi tentang keberanian, harapan, dan kekuatan.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Open',
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    width: 350,
                    child: TextButton(
                      onPressed: () {
                        // Handle button tap
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 105, 86,
                                227)), // Set the background color here
                      ),
                      child: const Text(
                        'Beli Tiket',
                        style: TextStyle(
                          fontFamily: 'Open',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), //
          ],
        ),
      ),
    );
  }
}
