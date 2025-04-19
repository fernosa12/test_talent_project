import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_clean_architecture/presentations/course/cubit/course_cubit.dart';

import '../../../lib.dart';

@RoutePage()
class DetailCourseView extends StatefulWidget implements AutoRouteWrapper {
  
  const DetailCourseView({super.key, });

  @override
  State<DetailCourseView> createState() => _DetailCourseViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CourseCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _DetailCourseViewState extends State<DetailCourseView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Memanggil method detailCourse dari cubit untuk mengambil detail kursus
    context.read<CourseCubit>().detailCourse();
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
      body: BlocBuilder<CourseCubit, CourseState>(
        builder: (context, state) {
          // Jika detailCourse masih null, tampilkan loading
          if (state.detailCourse == null) {
            return Center(child: CircularProgressIndicator());
          }

          return DefaultTabController(
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
                        child: Image.network(
                          state.detailCourse?.path?.first.url ??
                              '', // Jika URL null, pakai placeholder
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset('assets/images/null_foto.webp',
                                fit: BoxFit.cover);
                          },
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Title
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12),
                        child: Text(
                          state.detailCourse?.title ?? 'No Title',
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
                              'Created by ${state.detailCourse?.author ?? 'Unknown'}',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'In English',
                              style: TextStyle(color: Colors.white),
                            ),
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
                    itemCount: state.detailCourse?.chapter?.length ?? 0,
                    itemBuilder: (context, index) {
                      final chapter = state.detailCourse?.chapter?[index];

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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Chapter ${index + 1}',
                                      style: TextStyle(color: Colors.grey)),
                                  Text(chapter?.title ?? 'No Title',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                chapter?.title ?? 'No Title',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  // More Like This
                  Center(
                    child: Text('Similar Courses',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ChapterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width / 2 - 40, 0);
    path.quadraticBezierTo(
      size.width / 2 - 20,
      25,
      size.width / 2,
      25,
    );
    path.quadraticBezierTo(
      size.width / 2 + 20,
      25,
      size.width / 2 + 40,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
