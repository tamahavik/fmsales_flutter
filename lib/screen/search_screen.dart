import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM Sales'),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: Text(
                'Cari Pekerjaan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Expanded(
              child: ListView(
                children: [
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                  Text('data'),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
