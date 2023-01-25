import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Customer Name',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Draft',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'FIFADA',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 20,
                        child: IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '0854313515131',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Priority: 3',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: false,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              color: Colors.amber[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pesan UH : ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "HasilFu UH : ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Remark UH : asdasdasdasd\nasdadasdasdasdasd\nasdasdasdasdas ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'JALAN GANG SENGGOL 3/2 Kel. Kayu Putih , Kec. Pulo Gadung , Kota Jakarta Timur, Prov DKI Jakarta',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Column(
//           children: [
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'CUSTOMER NAME',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontSize: 16,
//                     ),
//                   ),
//                   Text(
//                     'DATA SOURCE NAME',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '084621316516',
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                   Text(
//                     'Priority : 3',
//                     style: TextStyle(color: Colors.red, fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(5),
//               width: double.infinity,
//               color: Colors.yellow,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Pesan UH : "),
//                   Text("HasilFu UH : "),
//                   Text(
//                       "Remark UH : asdasdasdasd\nasdadasdasdasdasd\nasdasdasdasdas\n "),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Text(
//                 'JALAN GANG SENGGOL 3/2 Kel. Kayu Putih , Kec. Pulo Gadung , Kota Jakarta Timur, Prov DKI Jakarta',
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 14,
//                 ),
//               ),
//             ),
//           ],
//         ),
