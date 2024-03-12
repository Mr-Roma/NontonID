import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nonton_id/pages/profile_page.dart';
import 'package:nonton_id/pages/tiket_page.dart';

class HomePage extends StatelessWidget {
  final List<String> images = [
    "assets/images/ads.png",
    "assets/images/ads.png",
    "assets/images/ads.png",
    "assets/images/ads.png",
  ];

  final List<String> imageList = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image12.png",
    "assets/images/image13.png",
    "assets/images/image14.png",
    "assets/images/image15.png",
  ];

  // Define routes for each movie
  final List<String> movieRoutes = [
    '/movie1',
    '/movie2',
    '/movie3',
    '/movie4',
    '/movie5',
    '/movie6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1c1a29),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1c1a29),
        automaticallyImplyLeading: false, // Remove the back arrow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: SizedBox(
                width: 50,
                height: 50,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: 40,
                        height: 40,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  'Bandung',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    // Add functionality for notification button
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 200,
                    sliderWidth: 400,
                    autoPlay: true,
                    imagesLink: images,
                    isAssets: true,
                    imageFitMode: BoxFit.cover,
                    indicatorActiveColor: Colors.yellow,
                    imageRadius: BorderSide.strokeAlignInside,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Sedang Tayang',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(width: 80),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TiketPage()), // Replace OtherPage() with the destination page
                          );
                        },
                        child: const Text(
                          'Lihat Semua',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: const Color(0xFF1c1a29),
                  height: 300,
                  child: ImageCard(
                    imageList: imageList,
                    movieTitles: const [
                      'Star Wars: The Last',
                      'Fast & Furious 9',
                      'The Conjuring',
                      'Petualangan Sherina 2',
                      'The Marvels',
                      'Despicable Me 4'
                    ],
                    starRatings: const [
                      4.5,
                      4.0,
                      4.8,
                      3.5,
                      4.2,
                      5.0
                    ], // Provide star ratings here
                    movieRoutes: movieRoutes, // Pass the movie routes
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'Voucher Deals',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 213,
                                height: 131,
                                color: Color.fromARGB(255, 105, 86, 227),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    20), // Optional spacing between containers
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 213,
                                height: 131,
                                color: const Color.fromARGB(255, 105, 86, 227),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    20), // Optional spacing between containers
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 213,
                                height: 131,
                                color: const Color.fromARGB(255, 105, 86, 227),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ], // Add this bracket
            ),
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.imageList,
    required this.movieTitles,
    required this.starRatings,
    required this.movieRoutes,
  }) : super(key: key);

  final List<String> imageList;
  final List<String> movieTitles;
  final List<double> starRatings;
  final List<String> movieRoutes; // New property to hold movie routes

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigate to corresponding movie screen
                        Navigator.pushNamed(context, movieRoutes[index]);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                          height: 250,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 10,
                      right: 10,
                      child: Text(
                        movieTitles[index], // Movie title based on index
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 40,
                      child: RatingBar.builder(
                        initialRating:
                            starRatings[index], // Initial rating based on index
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // Update the rating based on user input
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      right: 10,
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
