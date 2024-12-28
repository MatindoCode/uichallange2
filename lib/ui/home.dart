import 'package:challenge2/components/card.dart';
import 'package:challenge2/components/display.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                )),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: MyCard(),
          ),
          SizedBox(height: screenHeight * 0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 

              GestureDetector(onTap: () {}  ,child: const Text('Purchase', style: TextStyle(color: Colors.white, ),)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz, color: Colors.white,
                  )),
            ],
          ),

          Expanded(
            child: Stack(
              // Center-align children in the Stack
              children: [
                // Top padding

                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.1),
                  child: const Display(),
                ),

                Image.asset(
                  'images/shoes.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}