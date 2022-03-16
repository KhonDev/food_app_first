import 'package:flutter/material.dart';

import '../constants.dart';

class CategotyTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategotyTitle({
    Key? key,
    required this.title,
    this.active = false,
  }) : super(key: key);

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 40.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button!.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(.4),
            ),
      ),
    );
  }
}
