import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_clean_architecture/presentations/home/view/home_header.dart';

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
      body: Stack(
        children: [
          Row(
            spacing: 10.0,
            children: [
              Image.asset('assers/images/home/course.icon.png'),
              Image.asset('assets/images/home/audio.icon.png'),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HomeHeader(),
          ),
          Positioned(
            top: 100,
            left: 16,
            right: 16,
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
                )),
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
            icon: Icon(Icons.home), // Home icon added here
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
