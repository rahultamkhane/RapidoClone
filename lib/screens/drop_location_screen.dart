import 'package:flutter/material.dart';
import 'package:rapido_clone/constants/widget_constants.dart';
import 'package:rapido_clone/models/searched_address.dart';
import 'package:rapido_clone/widgets/list_item_address.dart';

class DropLocationScreen extends StatefulWidget {
  const DropLocationScreen({super.key});

  @override
  State<DropLocationScreen> createState() => _DropLocationScreenState();
}

class _DropLocationScreenState extends State<DropLocationScreen> {
  List<SearchedAddressModel> searchedAddress = [];
  TextEditingController? _pickController;
  TextEditingController? _dropController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pickController = TextEditingController(text: 'Your Current Location');
    _dropController = TextEditingController();
    loadHistoryData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pickController?.dispose();
    _dropController?.dispose();
    super.dispose();
  }

  void loadHistoryData() {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Drop',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 110,
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Text('For me'),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_drop_down_circle_sharp),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: Card(
                elevation: 0.0,
                color: const Color.fromARGB(255, 247, 245, 245),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromARGB(255, 247, 245, 245),
                      strokeAlign: 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.green,
                            size: 15,
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: TextFormField(
                              controller: _pickController,
                              decoration: const InputDecoration(
                                hintText: 'You Current Location',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 245, 245),
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 245, 245),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              maxLines: 1,
                              obscureText: false,
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                      horizontalDivider,
                      Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.red,
                            size: 15,
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 245, 245),
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 247, 245, 245),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              maxLines: 1,
                              obscureText: false,
                              keyboardType: TextInputType.text,
                              autofocus: true,
                              autocorrect: false,
                              showCursor: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const SizedBox(
              width: 170,
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      SizedBox(width: 10),
                      Text('Select on map'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListView.builder(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
