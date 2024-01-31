import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/Colors.dart';
import 'package:flutter_application_1/widgets/CategoryCard.dart';
import 'package:flutter_application_1/widgets/FoodDrinkCard.dart';
import 'package:flutter_application_1/widgets/GridCard.dart';
import 'package:flutter_application_1/widgets/Searchbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_application_1/model/receipt.dart';
import 'dart:core';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search bar
                Searchbar(),
                SizedBox(height: 20),
                // Category
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryCard(
                      icon: Iconsax.category,
                      text: 'All Receipt',
                      isActive: true,
                    ),
                    CategoryCard(
                      icon: Iconsax.cake,
                      text: 'Food Receipt',
                      isActive: false,
                    ),
                    CategoryCard(
                      icon: Iconsax.coffee,
                      text: 'Drink Receipt',
                      isActive: false,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // // Card title
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       'Populer',
                //       style: titleCategory,
                //     ),
                //     Text(
                //       'Show All',
                //       style: GoogleFonts.nunito(
                //         color: bgPrimary,
                //         fontSize: 14,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ],
                // ),

                // SizedBox(height: 14),

                // Horizontal card for popular foods and drinks
                // FutureBuilder(
                //   future: Receipt().getRandomReceipt(),
                //   builder: (context, snapshot) {
                //     if (snapshot.connectionState == ConnectionState.done) {
                //       if (snapshot.hasError) {
                //         return Text('Error fetching data');
                //       } else {
                //         var receipts = snapshot.data?['recipes'];
                //         return SingleChildScrollView(
                //           scrollDirection: Axis.horizontal,
                //           child: Column(
                //             children: [
                //               Row(
                //                 children: receipts
                //                     .map<Widget>((receipt) => FoodDrinkCard(
                //                           title: receipt['title'],
                //                           subtitle:
                //                               'Ready in ${receipt['readyInMinutes']} min',
                //                           image: NetworkImage(receipt['image']),
                //                           isLiked: false,
                //                         ))
                //                     .toList(),
                //               ),
                //             ],
                //           ),
                //         );
                //       }
                //     } else {
                //       return CircularProgressIndicator();
                //     }
                //   },
                // ),

                SizedBox(height: 35),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('All Receipt', style: titleCategory),
                  ],
                ),
                SizedBox(height: 20),
                // Grid Card
                GridView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 10, // Number of cards you want to show
                  itemBuilder: (context, index) {
                    // Replace with your data source
                    return FutureBuilder(
                      future: Receipt().getRandomReceipt(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Text('Error fetching data');
                          } else {
                            var receipts = snapshot.data?['recipes'];
                            var receipt = receipts[index];
                            return GridCard(
                              title: receipt['title'],
                              image: NetworkImage(receipt['image']),
                              rating: receipt['spoonacularScore'].toString(),
                              duration: '${receipt['readyInMinutes']} min',
                            );
                          }
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
