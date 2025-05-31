// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:snackr/core/utils/config/style/textstyle.dart';
// import 'package:snackr/core/utils/shared/component/widgets/headerimage.dart';
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 40, left: 20, right: 10),
//         child: Column(
//           crossAxisAlignment:CrossAxisAlignment.start,
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Hello Arthur,",
//                   style: AppTextStyle.boldTextStyle,
//                 ),
//                 Container(padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),  color: Colors.black,),
//                 child:Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.white,),)
//               ],
//             ),
//             SizedBox(height: 10,),
//             Text(
//               "Delicious Food",
//               style: AppTextStyle.headTextStyle,
//             ),
//             Text(
//               "Discover and Get Great Food",
//               style: AppTextStyle.subTextStyle,
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HeaderImage(imageasset: "images/items/ice-cream.png",),
//                 HeaderImage(imageasset: "images/items/burger.png",),
//                 HeaderImage(imageasset: "images/items/pizza.png",),
//                 HeaderImage(imageasset: "images/items/salad.png", ),
//
//               ],
//             )
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../core/utils/config/style/textstyle.dart';
import '../../core/utils/shared/component/widgets/headerimage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex; // Tracks the selected item index (null = none selected)

  final List<String> foodImages = [
    "images/items/ice-cream.png",
    "images/items/burger.png",
    "images/items/pizza.png",
    "images/items/salad.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Arthur,",
                  style: AppTextStyle.boldTextStyle,
                ),
                Container(padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),  color: Colors.black,),
                  child:Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.white,),)
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Delicious Food",
              style: AppTextStyle.headTextStyle,
            ),
            Text(
              "Discover and Get Great Food",
              style: AppTextStyle.subTextStyle,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(foodImages.length,
                      (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HeaderImage(
                    imageasset: foodImages[index],
                    isSelected: selectedIndex == index, // Pass selection state
                    onTap: () {
                      setState(() {
                        selectedIndex = index; // Update selection
                      });
                    },
                  ),
                );
              }),
            ),


          ],
        ),
      ),
    );

  }
}