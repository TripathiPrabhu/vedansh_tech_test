import 'package:flutter/material.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 80,
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.chair, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Sofas'),
                  )
                ],
              ),),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.system_update_alt, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Wardrobe'),
                  )
                ],
              ),),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.view_cozy, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Desk'),
                  )
                ],
              ),),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.rocket, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Dresser'),
                  )
                ],
              ),),

            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.whatshot, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Almirah'),
                  )
                ],
              ),),

            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.view_cozy, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Almirah'),
                  )
                ],
              ),),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.chair, size: 45,),),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text('Almirah'),
                  )
                ],
              ),),

          ],
        ),
      ),
    );
  }
}
