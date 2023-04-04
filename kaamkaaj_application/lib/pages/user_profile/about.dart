import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 0,
          leading: Icon(Icons.category_outlined),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Carpenter",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        ListTile(
          horizontalTitleGap: 0,
          leading: Icon(Icons.location_on_outlined),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Pakistan (9:32 PM)",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        ListTile(
          horizontalTitleGap: 0,
          leading: Icon(Icons.access_alarm_sharp),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Experience",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "5 Years",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        ListTile(
          horizontalTitleGap: 0,
          leading: Icon(Icons.attach_money),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Earned",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rs. 10,543",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        ListTile(
          horizontalTitleGap: 0,
          leading: Icon(Icons.beenhere_outlined),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Jobs Completed",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "5",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        // ****************************For enabling profile Button
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green[300]),
        //     onPressed: () {},
        //     child: Text(
        //       "Enable Profile",
        //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //     )),
        // ****************************For disabling profile Button
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
        //     onPressed: () {},
        //     child: Text(
        //       "Disable Profile",
        //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //     )),
        // ****************************For sending proposal Button
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green[300]),
        //     onPressed: () {},
        //     child: Text(
        //       "Send Proposal",
        //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //     )),
        // *****************************For saving the changes in name button
        ElevatedButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
