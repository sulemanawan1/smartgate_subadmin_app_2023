import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:societyadminapp/Routes/set_routes.dart';
import '../../../Constants/constants.dart';


class UsersGuestDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Guest Detail'),
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // showSearch(
                  //
                  //
                  //
                  //     context: context,
                  //     delegate: UserScreenCustomSearchDelegate()
                  //
                  // );
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(particularguestarrivalscreen);
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          logo,
                        ),
                      ),
                      title: Text('Guest Name'),
                      subtitle: Text('Vehicle No'),
                      trailing: Wrap(children: []),
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}
