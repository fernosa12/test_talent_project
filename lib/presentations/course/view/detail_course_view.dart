import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../lib.dart';

@RoutePage()
class DetailCourseView extends StatefulWidget {
  const DetailCourseView({super.key});

  @override
  State<DetailCourseView> createState() => _DetailCourseViewState();
}

class _DetailCourseViewState extends State<DetailCourseView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Course Detail'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Image
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                    alignment: Alignment.center,
                    child: Text(
                      'Course Header (Image)',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Title
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12),
                    child: Text(
                      'ChatGPT & Midjourney: 23 Ways of Earning Money with AI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Created by Davina',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'In Englis',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  // TabBar
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.white,
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Contents'),
                      Tab(text: 'More Like This'),
                    ],
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              // Overview
              Center(
                child: Text('Overview Content',
                    style: TextStyle(color: Colors.white)),
              ),

              // Contents
              ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ClipPath(
                    clipper: ChapterClipper(),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFF1A1A1C),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Chapter ${index + 1}',
                                  style: TextStyle(color: Colors.grey)),
                              Text('3 Lessons',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Introduction to the ChatGPT & Midjourney Course',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${3 + index} Lesson · ${14 + index * 2} min',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              // More like this
              Center(
                child: Text('Similar Courses',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from top-left
    path.moveTo(0, 0);

    // Go to start of notch
    path.lineTo(size.width / 2 - 40, 0);

    // Curve down (lebih dalam, y-nya lebih besar)
    path.quadraticBezierTo(
      size.width / 2 - 20,
      25, // <- makin besar = makin dalam
      size.width / 2,
      25,
    );

    path.quadraticBezierTo(
      size.width / 2 + 20,
      25,
      size.width / 2 + 40,
      0,
    );

    // Lanjut ke bawah dan kiri
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
