import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/summaryCard.dart';
import '../../widget/taskCard.dart';

class NewTaskScreens extends StatefulWidget {
  const NewTaskScreens({super.key});

  @override
  State<NewTaskScreens> createState() => _NewTaskScreensState();
}

class _NewTaskScreensState extends State<NewTaskScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSummarySection(),
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index){
                return  taskCard();
              },
              separatorBuilder: (context, index) => SizedBox(height: 8),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildSummarySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SummaryCard(title: 'New', count: 21),
            SummaryCard(title: 'Progress', count: 10),
            SummaryCard(title: 'Completed', count: 20),
            SummaryCard(title: 'Cancel', count: 5),
          ],
        ),
      ),
    );
  }
}
