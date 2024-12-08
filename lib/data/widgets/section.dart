// import 'package:flutter/material.dart';
// import 'package:sliver_tools/sliver_tools.dart';

// import '../utils/extensions/context_extension.dart';
// import 'app_icon.dart';
// import 'product_card.dart';

// class Section<T> extends StatefulWidget {
//   const Section._({
//     super.key,
//     required this.layoutType,
//     this.itemCount,
//     this.itemBuilder,
//     this.title,
//     this.onShowAll,
//     this.onTap,
//     this.backgroundImage,
//   });

//   final int layoutType;
//   final int? itemCount;
//   final SectionBuilder Function(int index)? itemBuilder;
//   final String? title;
//   final Function()? onShowAll;
//   final Function(int index)? onTap;
//   final String? backgroundImage;

//   factory Section.grid({
//     Key? key,
//     required int itemCount,
//     required SectionBuilder Function(int index) itemBuilder,
//     required String title,
//     Function()? onShowAll,
//     Function(int index)? onTap,
//   }) {
//     return Section<T>._(
//       key: key,
//       layoutType: 1,
//       itemCount: itemCount,
//       itemBuilder: itemBuilder,
//       title: title,
//       onShowAll: onShowAll,
//       onTap: onTap,
//     );
//   }

//   factory Section.scrollWithBackground({
//     required String title,
//     Function()? onShowAll,
//     Function(int index)? onTap,
//     required int itemCount,
//     required ScrollWithBgBuilder Function(int index) itemBuilder,
//     required String backgroundImage,
//   }) {
//     return Section._(
//       layoutType: 2,
//       title: title,
//       onShowAll: onShowAll,
//       onTap: onTap,
//       itemCount: itemCount,
//       backgroundImage: backgroundImage,
//       itemBuilder: itemBuilder,
//     );
//   }

//   factory Section.scroll({
//     required String title,
//     required int itemCount,
//     required ScrollBuilder Function(int index) itemBuilder,
//     Function()? onShowAll,
//     required Function(int index)? onTap,
//   }) {
//     return Section._(
//       layoutType: 3,
//       title: title,
//       itemCount: itemCount,
//       itemBuilder: itemBuilder,
//       onShowAll: onShowAll,
//       onTap: onTap,
//     );
//   }

//   @override
//   State<Section<T>> createState() => _SectionState<T>();
// }

// class _SectionState<T> extends State<Section<T>> {
//   late final ScrollController controller = ScrollController()
//     ..addListener(scrollListener);

//   late final ValueNotifier<double> opacity = ValueNotifier(1);

//   @override
//   void dispose() {
//     controller.dispose();
//     opacity.dispose();
//     super.dispose();
//   }

//   scrollListener() {
//     if (widget.layoutType == 2) {
//       _scrollWithBackgroundScrollListener();
//     }
//   }

//   _scrollWithBackgroundScrollListener() {
//     /// on range scroll 0 - 140 (0 - 1.0)
//     /// opacity 1 - 0
//     /// 140 - 0
//     final double newOpacity = 1 - (controller.offset / 140).clamp(0, 1);
//     if (newOpacity != opacity.value) {
//       opacity.value = newOpacity;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return (switch (widget.layoutType) {
//       1 => grid(),
//       2 => scrollWithBackground(),
//       3 => scroll(),
//       int() => const SizedBox(),
//     });
//     // return widget.layout;
//   }

//   Widget scroll() {
//     return MultiSliver(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   widget.title!,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'See All',
//                   style: TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
//           child: Container(
//             height: 248,
//             clipBehavior: Clip.antiAlias,
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.horizontal(
//                 left: Radius.circular(12),
//               ),
//             ),
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.only(left: 16),
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ...List.generate(
//                     widget.itemCount ?? 0,
//                     (index) => _buildItem(context, index),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildItem(BuildContext context, int index) {
//     final item = widget.itemBuilder!(index) as ScrollBuilder;
//     return Container(
//       margin: const EdgeInsets.only(right: 16, bottom: 8, top: 8),
//       child: ProductCard(
//         id: item.id,
//         imageUrl: item.imageUrl,
//         avatarUrl: item.avatar,
//         sellerName: item.name,
//         sellerBadgeUrl: item.badgeIcon,
//         sellerLevel: item.badge,
//         description: item.description,
//         ratingSummary: item.rating,
//         totalRating: item.totalRating,
//         price: item.price,
//       ),
//     );
//   }

//   Widget _buildItemScrollWithBackground(int index) {
//     final item = widget.itemBuilder!(index) as ScrollWithBgBuilder;
//     return Container(
//       margin: const EdgeInsets.only(right: 16, bottom: 8, top: 8),
//       child: ProductCard(
//         id: item.id,
//         imageUrl: item.imageUrl,
//         avatarUrl: item.avatar,
//         sellerName: item.name,
//         sellerBadgeUrl: item.badgeIcon,
//         sellerLevel: item.badge,
//         description: item.description,
//         ratingSummary: item.rating,
//         totalRating: item.totalRating,
//         price: item.price,
//       ),
//     );
//   }

//   Widget scrollWithBackground() {
//     return MultiSliver(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   widget.title!,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'See All',
//                   style: TextStyle(
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
//           child: Container(
//             height: 248,
//             clipBehavior: Clip.antiAlias,
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.horizontal(
//                 left: Radius.circular(12),
//               ),
//               color: context.primaryColor,
//             ),
//             child: Stack(
//               fit: StackFit.passthrough,
//               children: [
//                 Positioned.fill(
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: ValueListenableBuilder(
//                       valueListenable: opacity,
//                       builder: (context, value, child) => Transform.translate(
//                         offset: Offset(0 - ((1 - value) * 10), 0),
//                         child: Opacity(
//                           opacity: value,
//                           child: SizedBox(
//                             width: 160,
//                             height: 248,
//                             child: Image.network(
//                               widget.backgroundImage!,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   controller: controller,
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 160,
//                       ),
//                       ...List.generate(
//                         widget.itemCount!,
//                         (index) => _buildItemScrollWithBackground(index),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget grid() {
//     return MultiSliver(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   widget.title!,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               if (widget.onShowAll != null)
//                 TextButton(
//                   onPressed: widget.onShowAll,
//                   child: const Text(
//                     'See All',
//                     style: TextStyle(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//         SliverPadding(
//           padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//           sliver: SliverGrid(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 5,
//               mainAxisSpacing: 16,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 final item = widget.itemBuilder!(index) as GridBuilder;
//                 return Material(
//                   clipBehavior: Clip.antiAlias,
//                   color: context.scaffoldBackgroundColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: InkWell(
//                     onTap: () {
//                       if (widget.onTap != null) {
//                         widget.onTap!(index);
//                       }
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         AppIcon(
//                           item.icon,
//                           size: 20,
//                           customIcon: item.customIcon,
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           item.title,
//                           textAlign: TextAlign.center,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(
//                             fontSize: 10,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               childCount: widget.itemCount,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class GridBuilder extends SectionBuilder {
//   final String title;
//   final AppIcons icon;
//   final String? customIcon;

//   GridBuilder({
//     required this.title,
//     required this.icon,
//     this.customIcon,
//   });
// }

// class ScrollWithBgBuilder extends SectionBuilder {
//   final String name;
//   final String description;
//   final String avatar;
//   final String badge;
//   final String badgeIcon;
//   final String imageUrl;
//   final String price;
//   final String rating;
//   final String totalRating;
//   final String id;

//   ScrollWithBgBuilder({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.avatar,
//     required this.badge,
//     required this.badgeIcon,
//     required this.imageUrl,
//     required this.price,
//     required this.rating,
//     required this.totalRating,
//   });
// }

// class ScrollBuilder extends SectionBuilder {
//   final String name;
//   final String description;
//   final String avatar;
//   final String badge;
//   final String badgeIcon;
//   final String imageUrl;
//   final String price;
//   final String rating;
//   final String totalRating;
//   final String id;

//   ScrollBuilder({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.avatar,
//     required this.badge,
//     required this.imageUrl,
//     required this.badgeIcon,
//     required this.price,
//     required this.rating,
//     required this.totalRating,
//   });
// }

// abstract class SectionBuilder {}
