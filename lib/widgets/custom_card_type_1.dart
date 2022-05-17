import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Et laboris aliquip do labore velit incididunt. Voluptate minim sit anim ex occaecat. Lorem sint cillum officia elit ullamco cillum incididunt consectetur nulla occaecat consectetur nisi ullamco nulla. Irure nostrud eiusmod qui et officia irure eiusmod amet Lorem aliquip quis aliqua.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(child: const Text('Cancel'), onPressed: () {}),
                TextButton(child: const Text('Ok'), onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}