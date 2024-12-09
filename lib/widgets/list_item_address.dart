import 'package:flutter/material.dart';

class ListItemAddress extends StatefulWidget {
  final String name;
  final String address;
  final bool isFavorite;

  const ListItemAddress(
      {super.key,
      required this.name,
      required this.address,
      required this.isFavorite});

  @override
  State<ListItemAddress> createState() => _ListItemAddressState();
}

class _ListItemAddressState extends State<ListItemAddress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.maybeOf(context)
              ?.showSnackBar(SnackBar(content: Text(widget.name)));
        },
        child: Row(
          children: [
            const SizedBox(
              width: 50,
              child: Icon(
                Icons.history,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    widget.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              child: Icon(
                widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: widget.isFavorite ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
