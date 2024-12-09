import 'package:flutter/material.dart';
import 'package:rapido_clone/themes/theme.dart';

class ImageTextCard extends StatefulWidget {
  final String text;
  final String image;
  final Function? onClick;
  const ImageTextCard(
      {super.key, required this.text, required this.image, this.onClick});

  @override
  State<ImageTextCard> createState() => _ImageTextCardState();
}

class _ImageTextCardState extends State<ImageTextCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 100,
      child: InkWell(
        onTap: widget.onClick as void Function()?,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  color: AppTheme.imageTextCardBackground,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.image,
                  scale: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Text(
                widget.text,
                style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.normal),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
