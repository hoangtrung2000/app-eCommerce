import 'package:flutter/material.dart';
import 'package:learningdart/screens/wishlist/wishlist_screen.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Colors.white)),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
            icon: const Icon(Icons.favorite))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
