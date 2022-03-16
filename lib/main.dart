import 'package:flutter/material.dart';

import 'package:flutter_foods_delivery_poject/constants.dart';
import 'package:flutter_foods_delivery_poject/details_screen.dart';
import 'package:flutter_foods_delivery_poject/widget/category_title.dart';
import 'package:flutter_foods_delivery_poject/widget/food_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String imagess =
      'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10.0),
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.control_point_outlined),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 50),
            // child: Align(
            //   alignment: Alignment.topRight,
            //   child: Image.network(
            //       'https://play.google.com/store/apps/details?id=com.food.delivery55&hl=en_US&gl=US'),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const <Widget>[
                CategotyTitle(title: 'All', active: true),
                CategotyTitle(title: 'Italian'),
                CategotyTitle(title: 'Asian'),
                CategotyTitle(title: 'Chinese'),
                CategotyTitle(title: 'Burgers'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: Icon(Icons.search),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  title: 'ow palov',
                  image: imagess,
                  price: 20,
                  calories: '420kcal',
                  description:
                      'sadsad dsa da sd as dsa d sad as dasdadsad as da dadasdasdasdas da dasdasdasd sad as',
                  ingredient: 'asdasd',
                ),
                FoodCard(
                  press: () {},
                  title: 'ow palov',
                  image: imagess,
                  price: 20,
                  calories: '420kcal',
                  description:
                      'sadsad dsa da sd as dsa d sad as dasdadsad as da dadasdasdasdas da dasdasdasd sad as',
                  ingredient: 'asdasd',
                ),
                const SizedBox(width: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
