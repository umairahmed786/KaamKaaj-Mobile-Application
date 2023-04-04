import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.network(
            'https://ii2.pepperfry.com/media/catalog/product/s/t/494x544/stalley-solid-wood-arm-chair-in-honey-oak-finish-by-amberville-stalley-solid-wood-arm-chair-in-honey-gteler.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcY_nA8GHe1SJGOKaTRCwAq85VmaTXIHbkkg&usqp=CAU',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcY_nA8GHe1SJGOKaTRCwAq85VmaTXIHbkkg&usqp=CAU',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );

    // StreamBuilder(
    //     stream: dbRef.snapshots(),
    //     builder: (BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
    //       if (snapshot.data == null) {
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       } else if (snapshot.data!.docs.length == 0) {
    //         return Center(
    //           child: Text(
    //             "No Images ✔👀🤞",
    //             style: TextStyle(fontSize: 30),
    //           ),
    //         );
    //       } else {
    //         return ListView.builder(
    //             itemCount: snapshot.data!.docs.length,
    //             itemBuilder: (ctx, index) {
    //               final DocumentSnapshot documentSnapshot =
    //                   snapshot.data!.docs[index];
    //               if (documentSnapshot['image'] != "" &&
    //                   documentSnapshot['username'] != "") {
    //                 // print(documentSnapshot.id);

    //                 return Container(
    //                     margin: const EdgeInsets.symmetric(
    //                         horizontal: 20, vertical: 15),
    //                     child: ListTile(
    //                       contentPadding: const EdgeInsets.symmetric(
    //                           horizontal: 20, vertical: 5),
    //                       tileColor: Colors.white,
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(20)),

    //                       // ***************************** Checkbox for incomplete complete status
    //                       leading: Text(documentSnapshot['username']),

    //                       // *********************************  Todo Title
    //                       title: Image.network(documentSnapshot['image']),
    //                     ));
    //               }
    //               return const SizedBox();
    //             });
    //       }
    //     });
  }
}
