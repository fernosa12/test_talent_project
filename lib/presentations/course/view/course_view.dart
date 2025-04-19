import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_clean_architecture/presentations/course/cubit/course_cubit.dart';

import '../../../lib.dart';

@RoutePage()
class CourseView extends StatefulWidget implements AutoRouteWrapper {
  const CourseView({super.key});

  @override
  State<CourseView> createState() => _CourseViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CourseCubit>(
      create: (context) => di(),
      child: this,
    );
  }
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
                return BlocBuilder<CourseCubit, CourseState>(
                  builder: (context, state) {
                    // If there are no courses available
                    if (state.courses.isEmpty) {
                      return Center(
                        child: Text(
                          'No courses available.',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    return ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: state.courses.length,
                      itemBuilder: (context, index) {
                        final course = state.courses[index];

                        return InkWell(
                          onTap: () {
                            context.router.push(
                              DetailCourseRoute(),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 12),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xFF1A1A1C),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.network(
                                    course.path?.first.url ?? '',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.error,
                                          color: Colors.red);
                                    },
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        course.title ?? 'Untitled',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Mentor: ${course.author ?? 'Unknown'} · ${course.path?.length ?? 0} Lessons',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
