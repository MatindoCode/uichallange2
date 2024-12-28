import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  String formatCardNumber(String cardNumber) {
    return cardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)}   ");
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 233, 54, 60), // Red
            Color.fromARGB(255, 255, 111, 50), // Orange
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Opacity(
              opacity: 0.7,
              child: Image.asset('images/map.png', fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(
                  'images/visaLogo.png',
                  height: 20,
                  width: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'world',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              )
            ]),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
              child: Text('Card Number',
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  formatCardNumber(
                      '4539465921572356'), // Pass the full card number here
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Expiration',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text('CVC2',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('01/2024',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
               
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text('234',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
