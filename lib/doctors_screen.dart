import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Doctors', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          ),
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
        ],
      ),
    );
  }
}
