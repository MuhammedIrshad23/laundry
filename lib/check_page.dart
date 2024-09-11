import 'package:flutter/material.dart';
import 'package:laundry/cart.dart';
import 'package:laundry/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class Checkpage extends StatelessWidget {
  const Checkpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(236, 5, 31, 55),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePage())); // Go back to the previous page
                },
              ),
               IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Cartpage())); // Go back to the previous page
                },
              ),
              // Icon(
              //   Icons.arrow_back,
              //   color: Colors.white,
              //   size: 32,
              // ),
              // const Icon(
              //   Icons.shop_outlined,
              //   color: Colors.white,
              //   size: 32,
              // ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Laundry in progress',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Please wait with a cup of coffee and a piece of \n newspaper.Your clothes will come only \n in a blink of an eye',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(112, 255, 255, 255)),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 180,
                child: const Icon(Icons.lock_clock_outlined),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(188, 255, 255, 255),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 70,
                width: 180,
                child: Icon(
                  Icons.local_laundry_service_outlined,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Center(
                child: Container(
                  child: Lottie.asset('asset/washing_machine_animation.json',
                      height: 250, width: 250),
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(18)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 100,
                  child: Lottie.asset('asset/loading_3.json'),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
