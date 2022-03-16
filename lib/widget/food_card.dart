import 'package:flutter/material.dart';
import 'package:flutter_foods_delivery_poject/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final String calories;
  final String description;
  final int price;
  final VoidCallback press;

  const FoodCard({
    Key? key,
    required this.title,
    required this.ingredient,
    required this.image,
    required this.calories,
    required this.description,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
              ),
            ),
            Positioned(
              right: 20.0,
              top: 80.0,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Witj $ingredient',
                      style: TextStyle(
                        color: kTextColor.withOpacity(.4),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(calories),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
