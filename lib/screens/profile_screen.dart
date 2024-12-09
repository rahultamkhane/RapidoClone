import 'package:flutter/material.dart';
import 'package:rapido_clone/constants/widget_constants.dart';
import 'package:rapido_clone/themes/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybeOf(context)?.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Row(
          children: [
            Expanded(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Card(
                elevation: 0.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromARGB(255, 236, 232, 232),
                      strokeAlign: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline),
                      SizedBox(width: 10),
                      Text('Help'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listTile(Icons.person_2_outlined, 'Name', 'Rahul Tamkhane', true),
            horizontalDivider,
            listTile(Icons.call, 'Phone Number', '+91 123-456-7890', false),
            horizontalDivider,
            listTile(Icons.email_outlined, 'Email', '', true),
            horizontalDivider,
            listTile(Icons.person_outline_sharp, 'Gender', 'Male', true),
            horizontalDivider,
            listTile(Icons.calendar_month, 'Date of Birth', '', true),
            horizontalDivider,
            listTile(
                Icons.person_2_outlined, 'Member Since', 'Dec 2024', false),
            horizontalDivider,
            listTile(Icons.person_2_outlined, 'Emergency Contact', '', false),
            horizontalDivider,
          ],
        ),
      ),
    );
  }

  Widget listTile(
      IconData icon, String title, String subTitle, bool isEditable) {
    return ListTile(
      tileColor: Colors.white,
      // ignore: unnecessary_type_check
      leading: icon is IconData
          ? Icon(
              icon,
              color: Colors.blue.shade900,
              size: 30,
              weight: 0.5,
            )
          : Icon(
              Icons.info,
              color: Colors.blue.shade900,
              size: 30,
              weight: 0.5,
            ),
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            subTitle == ''
                ? const Text(
                    'Required',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  )
                : Text(
                    subTitle,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 60, 60, 60),
                      fontSize: 14,
                    ),
                  ),
          ],
        ),
      ),
      trailing: isEditable
          ? const Icon(
              Icons.arrow_forward_ios,
              color: AppTheme.lightGrey,
              size: 15,
            )
          : Container(
              width: 15,
            ),
    );
  }
}
