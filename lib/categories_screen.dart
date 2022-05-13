import 'package:flutter/material.dart';

import 'doctor_screen.dart';
import 'other_screen.dart';

class CategoriesScreen extends StatelessWidget {

  List <String> names = ["Doctors", "Pharmacy","Clinics","Hospitals"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medic', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        itemBuilder: (BuildContext ctx, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              getScreen(names[index], ctx);
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/medic.jpg'),
                          fit: BoxFit.cover,
                      ),
                    ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(names[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
        itemCount: names.length,
      ),
    );
  }

 void getScreen(String s,BuildContext context) {
    if(s == "Doctors"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorScreen()));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => OtherScreen()));
    }
  }
}
