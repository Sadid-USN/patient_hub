import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/data/local_list_items.dart';

class RatingBarStars extends StatelessWidget {
  const RatingBarStars({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: ratingItems.length,
                itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                itemBuilder: (context, index) => Column(
                  children: [
                    const SizedBox(
                      height: 80,
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      ratingItems[index],
                      style: starsheadline,
                    ),
                  ],
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 0.0),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         for (var i = 0; i < ratingItems.length; i++)
        //           Text(
        //             ratingItems[i],
        //             style: starsheadline,
        //           ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
