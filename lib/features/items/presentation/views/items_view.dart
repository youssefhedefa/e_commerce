import 'package:flutter/material.dart';
import 'widgets/item_app_bar.dart';
import 'widgets/item_item.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ItemAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(245, 246, 248, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 260,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return const ItemItem();
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

