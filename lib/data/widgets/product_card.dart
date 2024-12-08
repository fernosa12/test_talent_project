// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';

// import '../../lib.dart';
// import '../../presentations/wishlist/cubit/wishlist_cubit.dart';

// class ProductCard extends StatelessWidget {
//   final Function()? onTap;
//   final String imageUrl;
//   final String avatarUrl;
//   final String sellerName;
//   final String sellerBadgeUrl;
//   final String sellerLevel;
//   final String description;
//   final String ratingSummary;
//   final String totalRating;
//   final String price;
//   final double width;
//   final String id;

//   const ProductCard(
//       {super.key,
//       this.onTap,
//       required this.imageUrl,
//       required this.avatarUrl,
//       required this.sellerName,
//       required this.sellerBadgeUrl,
//       required this.sellerLevel,
//       required this.description,
//       required this.ratingSummary,
//       required this.totalRating,
//       required this.price,
//       this.width = 160,
//       required this.id});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       clipBehavior: Clip.antiAlias,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       // margin: const EdgeInsets.only(right: 16, bottom: 8, top: 8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Stack(
//             children: [
//               Image.network(
//                 imageUrl,
//                 height: 100,
//                 width: width,
//                 fit: BoxFit.cover,
//               ),
//               BlocBuilder<WishlistCubit, WishlistState>(
//                 builder: (context, state) => Positioned.fill(
//                     right: 4,
//                     top: 4,
//                     child: Align(
//                       alignment: Alignment.topRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           if (state.wishlists
//                               .where((element) => element.id == id)
//                               .isNotEmpty) {
//                             context.read<WishlistCubit>().deleteWishlist(id);
//                           } else {
//                             context.read<WishlistCubit>().addWishlist(id);
//                           }
//                         },
//                         child: CircleAvatar(
//                           backgroundColor: Colors.white,
//                           radius: 10,
//                           child: AppIcon(
//                             AppIcons.heartFilled,
//                             size: 7,
//                             color: state.wishlists
//                                     .where((element) => element.id == id)
//                                     .isNotEmpty
//                                 ? context.primaryColor
//                                 : Colors.grey,
//                           ),
//                         ),
//                       ),
//                     )),
//               )
//             ],
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         radius: 10,
//                         child: ClipOval(child: Image.network(avatarUrl)),
//                       ),
//                       const SizedBox(width: 6),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               sellerName,
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: const TextStyle(
//                                 fontSize: 8,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 6,
//                                   backgroundColor: Colors.green,
//                                   child: sellerBadgeUrl.contains('http')
//                                       ? Image.network(
//                                           sellerBadgeUrl,
//                                         )
//                                       : Image.asset(
//                                           sellerBadgeUrl,
//                                         ),
//                                 ),
//                                 const SizedBox(width: 4),
//                                 Text(
//                                   sellerLevel,
//                                   style: const TextStyle(fontSize: 8),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 12),
//                   Text(
//                     description,
//                     softWrap: true,
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 3,
//                     style: const TextStyle(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const Spacer(),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text.rich(
//                         TextSpan(
//                           children: [
//                             const TextSpan(
//                               text: 'Mulai dari\n',
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 8,
//                                 height: 1,
//                               ),
//                             ),
//                             WidgetSpan(
//                               alignment: PlaceholderAlignment.baseline,
//                               baseline: TextBaseline.alphabetic,
//                               child: GradientText(
//                                 price,
//                                 colors: const [
//                                   Color(0xffA710F7),
//                                   Color(0xff0BF7CD),
//                                 ],
//                                 style: TextStyle(
//                                   height: 1,
//                                   color: context.textColor,
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Spacer(),
//                       const Icon(
//                         Icons.star,
//                         size: 12,
//                         color: Colors.amber,
//                       ),
//                       const SizedBox(width: 4),
//                       Text.rich(
//                         TextSpan(children: [
//                           TextSpan(
//                             text: ratingSummary,
//                             style: const TextStyle(
//                               fontSize: 10,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.amber,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' ($totalRating)',
//                             style: const TextStyle(
//                               fontSize: 10,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ]),
//                         style: const TextStyle(
//                           fontSize: 10,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
