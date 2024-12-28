import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), // Adjust radius as needed
            topRight: Radius.circular(30.0)),
        color: Colors.white,
      ),
      child: Align(
         alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

               const Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Men's shoe", style: TextStyle(color: Colors.grey, fontSize: 15),),
                   Text('Nike Shoe', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                   Text("\$ 320.99", style: TextStyle(color: Colors.black, fontSize: 30),),
                 ],
               ),
                  
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle,),
                  child: const Icon(Icons.add, color: Colors.white, size: 30),
                )


            ],
          ),
        ),
      ),
    );
  }
}
