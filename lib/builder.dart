
import 'package:flutter/material.dart';
import 'package:gride_view/custom.dart';

class GirdViewBuilderPage extends StatelessWidget {
  GirdViewBuilderPage({super.key});
  final List<Map> myProducts = List.generate(
      150,
      (index) => {
            "id": index,
            "name": "Product $index",
          }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridVIew Builder"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(myProducts[index]["name"],style: const TextStyle(color: Colors.white,fontSize: 18)),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const GridViewCustomPage(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(fontSize: 18),
                side: const BorderSide(color: Colors.black)
              ),
              child: const Text("Third Method"),
            )
          ],
        ),
      ),
    );
  }
}