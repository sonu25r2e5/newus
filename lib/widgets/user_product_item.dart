import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const UserProductItem(this.imageUrl, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
