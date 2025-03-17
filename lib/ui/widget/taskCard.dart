import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taskCard extends StatelessWidget {
  const taskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            Text('Description',style: TextStyle(fontSize: 15),),
            Text('Date: 02/02/2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            Row(
              children: [
                Chip(label: Text('New',style: TextStyle(
                    color: Colors.white
                ),),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: Colors.blue,
                  side: BorderSide.none,
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}