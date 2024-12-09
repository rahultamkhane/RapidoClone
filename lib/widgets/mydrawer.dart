import 'package:flutter/material.dart';
import 'package:rapido_clone/constants/constants.dart';
import 'package:rapido_clone/constants/widget_constants.dart';
import 'package:rapido_clone/screens/profile_screen.dart';
import 'package:rapido_clone/screens/settings_screen.dart';
import 'package:rapido_clone/themes/theme.dart';
import 'package:rapido_clone/widgets/profile_widget.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget listTile(String title, dynamic icon) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pop();
        if (title == Constants.labelDrawerSettings) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SettingsScreen(),
            ),
          );
        }
      },
      leading: icon is IconData
          ? Icon(
              icon,
              color: Colors.black,
            )
          : const Icon(
              Icons.info,
            ),
      title: Text(title),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppTheme.lightGrey,
        size: 15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.maybeOf(context)?.pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const SizedBox(width: 2),
              const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const ProfileWidget()),
          listTile(
            Constants.labelDrawerHelp,
            Icons.help,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerParcel,
            Icons.card_giftcard,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerPayment,
            Icons.payment,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerMyRides,
            Icons.book_outlined,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerSafety,
            Icons.shield_outlined,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerReferEarn,
            Icons.help,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerMyRewards,
            Icons.help,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerPowerPass,
            Icons.card_giftcard_rounded,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerRapidoCoins,
            Icons.monetization_on_outlined,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerNotifications,
            Icons.notifications,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerClaims,
            Icons.shield_outlined,
          ),
          horizontalDivider,
          listTile(
            Constants.labelDrawerSettings,
            Icons.settings,
          ),
          horizontalDivider,
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
