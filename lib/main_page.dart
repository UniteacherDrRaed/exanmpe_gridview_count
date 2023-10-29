import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview.count example",style: TextStyle(
          fontSize: 20,color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        crossAxisSpacing: 24,
        mainAxisSpacing: 21,
        crossAxisCount: 2,
        children:List.generate(40, (index) =>
            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.blue.shade400,
                    duration:const  Duration(seconds: 1),
                    content: Text("$index")));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.pink,
                        Colors.white,
                      ]

                  ),
                  boxShadow:   [
                    BoxShadow(
                      offset: const Offset(5,4),
                      color: Colors.lime.shade100,
                    )
                  ],
                ),

                child: Center(
                  child: Text("item $index",style: const TextStyle(
                    fontSize: 20,color: Colors.white,
                  ),),
                ),
              ),
            )),
      ),
    );
  }
}
