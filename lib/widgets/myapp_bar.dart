import 'package:flutter/material.dart';
import 'package:rapido_clone/screens/drop_location_screen.dart';

class MyappBar extends StatelessWidget implements PreferredSizeWidget {
  const MyappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10.0,
      backgroundColor: Colors.white,
      title: SizedBox(
        height: kToolbarHeight - 10,
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DropLocationScreen(),
            ),
          ),
          child: const Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Where are you going?',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
