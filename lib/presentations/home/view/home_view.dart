import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_clean_architecture/presentations/home/view/home_header.dart';

import '../../../lib.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  // List of actions for the bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Header and search bar in Stack
          Container(
            height: 200, // Specify height for the area where Stack is used
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: HomeHeader(),
                ),
                Positioned(
                  top: 90, // Adjust as needed to position below the header
                  left: 16,
                  right: 16,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 20.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          filled: true,
                          fillColor: Color(0xFF222326),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFF222326),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFF222326),
                              width: 1,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Other content in the body
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .start, // To center the images horizontally
                  children: [
                    // First image
                    InkWell(
                      onTap: () {
                        context.router.push(const CourseRoute());
                      },
                      child: Image.asset(
                        'assets/images/home/course_icon.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    SizedBox(width: 20), // Spacing between the images
                    // Second image
                    Image.asset(
                      'assets/images/home/audio_icon.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color(0xFF222326), // Dark background for the bottom bar
        selectedItemColor: Colors.white, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Update selected index when tapped
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Home icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Audio Book',
          ),
        ],
      ),
    );
  }
}
