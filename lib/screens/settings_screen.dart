import 'package:flutter/material.dart';
import 'package:rapido_clone/constants/constants.dart';
import 'package:rapido_clone/constants/widget_constants.dart';
import 'package:rapido_clone/themes/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Settings',
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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.labelSettingsGeneral,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            listTile(Icons.call, 'Profile', '+91 123-456-7890'),
                            horizontalDivider,
                            listTile(Icons.favorite_outlined, 'Favourites',
                                'Manage favourite locations',
                                color: Colors.red),
                            horizontalDivider,
                            listTile(Icons.format_align_left_sharp,
                                'Preferences', 'Manage preferences'),
                            horizontalDivider,
                            listTile(Icons.shortcut, 'App shortcuts',
                                'Create shortcuts on home launcher'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.labelSettingsOthers,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            listTile(Icons.info, 'About', '1.0.0'),
                            horizontalDivider,
                            listTile(Icons.subscriptions, 'Subscribe to Beta',
                                'Get early access to latest features'),
                            horizontalDivider,
                            listTile(Icons.logout_rounded, 'Logout', 'Manage '),
                            horizontalDivider,
                            listTile(
                              Icons.delete,
                              'Delete Account',
                              '',
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listTile(IconData icon, String title, String subTitle,
      {Color color = const Color.fromRGBO(13, 71, 161, 1)}) {
    return ListTile(
      // ignore: unnecessary_type_check
      leading: icon is IconData
          ? Icon(
              icon,
              color: color,
              size: 25,
            )
          : Icon(
              Icons.info,
              color: color,
              size: 25,
            ),
      title: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0, bottom: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                ? Container()
                : Text(
                    subTitle,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 84, 83, 83),
                      fontSize: 13,
                    ),
                  ),
          ],
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppTheme.lightGrey,
        size: 15,
      ),
    );
  }
}
