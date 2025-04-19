import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_clean_architecture/router/router.dart';

@RoutePage()
class AudioView extends StatefulWidget {
  const AudioView({super.key});

  @override
  State<AudioView> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioView> {
  final List<Map<String, String>> bestSellers = [
    {
      'title': 'The Power of Habit',
      'author': 'Kev Freeman',
      'image': 'https://picsum.photos/120/180?random=1'
    },
    {
      'title': '5 Types of Psychological...',
      'author': 'Meg Mason',
      'image': 'https://picsum.photos/120/180?random=2'
    },
    {
      'title': 'The Swallow',
      'author': 'Lisa Lutz',
      'image': 'https://picsum.photos/120/180?random=3'
    },
  ];

  final List<Map<String, dynamic>> moreBooks = [
    {
      'title': 'Good to Great',
      'author': 'Deena Roberts',
      'chapters': 16,
      'duration': '45 min',
      'image': 'https://picsum.photos/60/90?random=4',
    },
    {
      'title': 'The Ninth Life',
      'author': 'Taylor B. Barton',
      'chapters': 16,
      'duration': '45 min',
      'image': 'https://picsum.photos/60/90?random=5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => context.router.back(),
          icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
        ),
        title: Text('Audio Book', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search Keywords',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xFF222326),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  suffixIcon: Icon(Icons.tune, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            // Best-sellers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Best-sellers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 12),
            CarouselSlider(
              options: CarouselOptions(
                height: 220,
                enableInfiniteScroll: false,
                viewportFraction: 0.36, // <– bikin lebih rapat
                enlargeCenterPage:
                    true, // <– optional biar item tengah lebih besar
              ),
              items: bestSellers.map((book) {
                return Builder(
                  builder: (context) => Center(
                    // <– center align
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(book['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          book['title']!,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          book['author']!,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),

            // More Books
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Text("More Books",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            ListView.builder(
              itemCount: moreBooks.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final book = moreBooks[index];
                return InkWell(
                  onTap: () {
                    context.router.push(AudioDetailRoute());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            book['image'],
                            width: 60,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 12),
                        // Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(book['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text("by ${book['author']}",
                                  style: TextStyle(color: Colors.grey)),
                              Text("${book['chapters']} Chapters",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),

                        Column(
                          children: [
                            Icon(Icons.bookmark_border, color: Colors.white),
                            SizedBox(height: 4),
                            Text(book['duration'],
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
