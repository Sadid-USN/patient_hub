import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/data/local_list_items.dart';

class RatingBarStars extends StatelessWidget {
  const RatingBarStars({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: ratingItems.length,
              itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
              itemBuilder: (context, index) => Column(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ratingItems[index],
                    style: headline3,
                  ),
                ],
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
        ),
      ],
    );
  }
}
