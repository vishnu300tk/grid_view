
import 'package:flutter/material.dart';
import 'package:gride_view/builder.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  children: [
                    Container(color: Colors.red),
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.yellow),          
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GirdViewBuilderPage(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.all(8.0),
                  textStyle: const TextStyle(fontSize: 18),
                  side: const BorderSide(color: Colors.black)
                ),
                child: const Text("Second Method")),
          ],
        ),
      ),
    );
  }
}