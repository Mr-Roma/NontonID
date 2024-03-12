import 'package:flutter/material.dart';
import 'package:nonton_id/pages/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1c1a29),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: const Icon(
            Icons
                .keyboard_double_arrow_left_outlined, // or any other leading icon you're using
            color: Colors.white, // set the color to white
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 360,
                    height: 150,
                    color: const Color(0xFF2F2C44),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              child: Image.asset(
                                'assets/images/profile.jpg',
                                width: 90, // Adjust image width as needed
                                height: 90, // Adjust image height as needed
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add space between image and text
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 1, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Romario Marcal',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: 'Open',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Since 5 January 2022',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(right: 95),
                                  child: SizedBox(
                                    width: 200,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Add your action here
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 245, 209, 5), // Gold color
                                      ),
                                      child: const Text(
                                        'Member Gold',
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
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 360,
                    height: 100,
                    color: const Color(0xFF2F2C44),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Wallet',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Open',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Column(
                            children: [
                              Icon(
                                Icons
                                    .star, // Replace 'icon1' with your desired icon data
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Points',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Open',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons
                                    .local_offer, // Replace 'icon2' with your desired icon data
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Voucher',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Open',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 20, right: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons
                                    .payments, // Replace 'icon3' with your desired icon data
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'PayLater',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Open',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ContainerProfile(
                title: 'Saved',
                description: 'Lorem ipsum dolor sit amet, consectetur adipisci',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'History',
                description: 'Lorem ipsum dolor sit amet, consectetur adipisci',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'My Ratings',
                description: 'Lorem ipsum dolor sit amet, consectetur adipisci',
              ),
              const SizedBox(
                height: 5,
              ),
              const ContainerProfile(
                title: 'Help Center',
                description: 'Lorem ipsum dolor sit amet, consectetur adipisci',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerProfile extends StatelessWidget {
  final String? title;
  final String? description;

  const ContainerProfile({
    Key? key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 360,
          height: 70,
          color: const Color(0xFF2F2C44),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open',
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                Text(
                  description!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open',
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
