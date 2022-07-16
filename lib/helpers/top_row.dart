import 'package:flutter/material.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
           IconButton(onPressed: (){}, icon: Icon(Icons.backup_table)),
          ],
        ),
      ),
    );
  }
}
