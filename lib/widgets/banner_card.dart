import 'package:flutter/material.dart';

class BannerCard extends StatefulWidget {
  final String text;
  final String image;
  const BannerCard({super.key, required this.text, required this.image});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 140,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              widget.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 140,
              child: Text(
                widget.text,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
