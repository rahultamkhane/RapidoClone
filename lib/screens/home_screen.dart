import 'package:flutter/material.dart';
import 'package:rapido_clone/models/searched_address.dart';
import 'package:rapido_clone/screens/drop_location_screen.dart';
import 'package:rapido_clone/widgets/banner_card.dart';
import 'package:rapido_clone/widgets/image_text_card.dart';
import 'package:rapido_clone/widgets/list_item_address.dart';
import 'package:rapido_clone/widgets/myapp_bar.dart';
import 'package:rapido_clone/widgets/mydrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SearchedAddressModel> searchedAddress = [];
  ScrollController? _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    loadSampleData();
  }

  void loadSampleData() {
    searchedAddress.add(SearchedAddressModel(
        name: 'Vidhana Soudha',
        address:
            'Ambedkar Bheedhi, Sampangi Rama Nagara, Bengaluru, Karnataka, 560001',
        isFavorite: true));
    searchedAddress.add(SearchedAddressModel(
        name: 'Electronic City',
        address: 'Electronic City, Bangalore, Karnataka'));
    searchedAddress.add(SearchedAddressModel(
        name: 'Whitefield', address: 'Whitefield, Bangalore, Karnataka'));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyappBar(),
      drawer: const MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
        ),
        controller: _scrollController,
        children: [
          Column(
            children: [
              recentSearchWidget(),
              exploreWidget(),
              bannerWidget(),
            ],
          )
        ],
      ),
    );
  }

  Widget recentSearchWidget() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: searchedAddress.length,
      itemBuilder: (context, index) {
        return ListItemAddress(
          name: searchedAddress[index].name,
          address: searchedAddress[index].address,
          isFavorite: searchedAddress[index].isFavorite,
        );
      },
    );
  }

  Widget exploreWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Explore',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
              TextButton(
                child: const Text('View All >'),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageTextCard(
                text: 'Bike',
                image: 'assets/images/motorbike.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              ImageTextCard(
                text: 'Auto',
                image: 'assets/images/rickshaw.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              ImageTextCard(
                text: 'Cab Economy',
                image: 'assets/images/cab_economy.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              ImageTextCard(
                text: 'Parcel',
                image: 'assets/images/parcel.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageTextCard(
                text: 'Auto Share',
                image: 'assets/images/riksha_share.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              ImageTextCard(
                text: 'Bike Lite',
                image: 'assets/images/motorbike.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              ImageTextCard(
                text: 'Cab Premium',
                image: 'assets/images/cab_premium.png',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DropLocationScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 100)
            ],
          ),
        ],
      ),
    );
  }

  Widget bannerWidget() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Save More',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BannerCard(
                  text: 'Reveal Your \nRewards - Scrach',
                  image: 'assets/images/reward.jpg',
                ),
                SizedBox(width: 20),
                BannerCard(
                  text: 'Deliver items from anywhere',
                  image: 'assets/images/delivery.jpg',
                ),
                SizedBox(width: 20),
                BannerCard(
                  text: 'Book a Rapido for anythime!',
                  image: 'assets/images/book_cab.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
