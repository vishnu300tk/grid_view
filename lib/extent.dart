import 'package:flutter/material.dart';

class GridViewExtentPage extends StatelessWidget {
  const GridViewExtentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Extent"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.extent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 3 / 2,
                  children: List.generate(20, (index) {
                    return Container(
                      color: Colors.teal,
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Text('Widget: $index',style: const TextStyle(color: Colors.white,fontSize: 18),),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}