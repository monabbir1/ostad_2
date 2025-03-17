import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key, required this.title, required this.count,
  });

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
        child: Column(
          children: [
            Text('$count',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
            Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          ],
        ),
      ),
    );
  }
}
