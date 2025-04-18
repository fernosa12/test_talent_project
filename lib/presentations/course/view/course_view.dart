import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../lib.dart';

@RoutePage()
class CourseView extends StatefulWidget {
  const CourseView({super.key});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging == false) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_tabController == null) return SizedBox(); // avoid build error

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => context.router.back(),
          icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
        ),
        title: Text('Courses'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Menu action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Title, mentor, or keywords...',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Color(0xFF222326),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                suffixIcon: Icon(Icons.tune, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF222326), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 1),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),

          // Tab bar below search

          TabBar(
            tabAlignment: TabAlignment.center,
            controller: _tabController!,
            labelPadding: EdgeInsets.symmetric(horizontal: 6),
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(color: Colors.transparent),
            dividerColor: Colors.transparent,
            tabs: List.generate(4, (index) {
              final isSelected = _tabController!.index == index;
              final labels = ['For You', 'Recent', 'Trending', 'Technology'];
              return Container(
                width: 85,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF222326),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? Colors.white : Color(0xFF222326),
                    width: 1,
                  ),
                ),
                child: Text(
                  labels[index],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            }),
          ),

          // Tab views
          Expanded(
            child: TabBarView(
              controller: _tabController!,
              children: List.generate(4, (index) {
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        context.router.push(const DetailCourseRoute());
                      },
                      child: Card(
                        color: Color(0xFF1A1A1C),
                        margin: EdgeInsets.only(bottom: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.play_circle_fill,
                                color: Colors.white),
                          ),
                          title: Text(
                            'Dummy Course ${i + 1}',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Mentor Name · 1h 20m',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 16),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
