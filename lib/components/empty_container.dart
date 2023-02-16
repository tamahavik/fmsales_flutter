import 'package:flutter/material.dart';

class EmptyContainer extends StatelessWidget {
  const EmptyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(Icons.task,size: 60, color: Colors.grey,),
          Text('Tidak ada data', style: TextStyle(fontSize: 40, color: Colors.grey),)
        ],
      ),
    );
  }
}
