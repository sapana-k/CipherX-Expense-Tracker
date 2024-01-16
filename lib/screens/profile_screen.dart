import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/bottom_navigation_bar.dart';

var name;
TextEditingController emaiController=TextEditingController();
//
// class GetData extends StatefulWidget {
//   const GetData({Key? key}) : super(key: key);
//
//   @override
//   State<GetData> createState() => _GetDataState();
// }
//
// class _GetDataState extends State<GetData> {
//
//   @override
//   Widget build(BuildContext context) {
//     return PaginateFirestore(itemBuilder:  (context,dynamic db, index){
//       return Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//
//           children: [
//             SizedBox(
//               height: 60,
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(140),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 10,
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: CircleAvatar(
//                   radius: 70,
//                   backgroundImage: AssetImage("images/saksham.png"),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 80,
//             ),
//             Column(children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(height: 60,width: 180,child: Card(
//                   child:
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(Icons.person),
//                       ),
//                       Text(
//                         "${db[index]['name']}",
//                         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color:Colors.black),
//                       ),
//                     ],
//                   ),
//                 ),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(height: 60,width: 270,child: Card(
//                   child:
//                   Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(Icons.phone),
//                         ),
//                         Expanded(
//                           child: Text(
//                             "${db[index]['phone']}",
//                             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
//                           ),
//                         ),
//                       ]
//                   ),),
//                 ),)
//             ],),
//             Card(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(Icons.email),
//                   ),
//                   Text(
//                     "${db[index]['email']}",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Card(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(Icons.work),
//                   ),
//                   Text(
//                     "${db[index]['occupation']}",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             Card(
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Age",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
//                   ),
//                   Text(
//                     "${db[index]['age']}",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 12,
//             ),
//
//
//           ],
//
//         ),
//       );
//     }
//         , query:FirebaseFirestore.instance.collection('User').where('email',isEqualTo: "${emaiController.text}"), itemBuilderType:PaginateBuilderType.pageView);
//   }
// }


class ProfileScreen extends StatefulWidget {
  static const String name = '/profile_screen';
  CollectionReference ref=FirebaseFirestore.instance.collection('User');
  List? data;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavigationBar(selectedIndex: 2),
        // body: GetData()
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/img.png"),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 60,width: 180,child: Card(
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person),
                      ),
                      Text(
                        'Khushi Sharma',
                        // "${db[index]['name']}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color:Colors.black),
                      ),
                    ],
                  ),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 60,width: 270,child: Card(
                  child:
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.phone),
                        ),
                        Expanded(
                          child: Text(
                            '909093728',
                            // "${db[index]['phone']}",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                        ),
                      ]
                  ),),
                ),)
            ],),
            Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.email),
                  ),
                  Text(
                    // "${db[index]['email']}",
                    'email@gmail.com',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
    ),
    );
  }
}