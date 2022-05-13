import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Categories2Screen extends StatefulWidget {

  @override
  State<Categories2Screen> createState() => _Categories2ScreenState();
}

class _Categories2ScreenState extends State<Categories2Screen> {

  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              style: SideMenuStyle(
                displayMode: SideMenuDisplayMode.open,
                hoverColor: Colors.blue[100],
                selectedColor: Colors.lightBlue,
                selectedTitleTextStyle: const TextStyle(color: Colors.white),
                unselectedTitleTextStyle: const TextStyle(color: Colors.grey),
                selectedIconColor: Colors.white,
                openSideMenuWidth: 110,
                iconSize: 30,
              ),
              controller: page,
              items: [
                SideMenuItem(
                  priority: 0,
                  title: 'Doctors',
                  onTap: () {
                    page.jumpToPage(0);
                  },
                  icon: Icon(Icons.shop),
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'Pharmacy',
                  onTap: () {
                    page.jumpToPage(1);
                  },
                  icon: Icon(Icons.settings),
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'Clinics',
                  onTap: () {
                    page.jumpToPage(2);
                  },
                  icon: Icon(Icons.exit_to_app),
                ),
                SideMenuItem(
                  priority: 3,
                  title: 'Hospitals',
                  onTap: () {
                    page.jumpToPage(3);
                  },
                  icon: Icon(Icons.exit_to_app),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: page,
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            width: double.infinity,
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/medic.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Dr. John Doe',
                                        style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        'some info About the doctor',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        ignoreGestures: true,
                                        glow: false,
                                        itemSize: 25,
                                        itemCount: 5,
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        'From 90 visitors',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("About", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nisl id libero consectetur interdum. Nulla euismod, urna eu tincidunt consectetur, nisi nisl aliquam nunc, eget consectetur nisl nisi eget nisl.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Address", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text("obert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678",
                                      style: TextStyle(fontSize: 15)
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Price: 250 EG", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(height: 15,),
                      itemCount: 10,
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Settings'),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Exit'),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Exit'),
                    ),
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
