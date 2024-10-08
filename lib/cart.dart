import 'package:flutter/material.dart';
import 'package:laundry/check_page.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 240, 237, 237),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black87,
                            size: 32,
                          ),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkpage()));
                          },
                        ),
                        // SizedBox(
                        //   width: 150,
                        // ),
                        Text(
                          'Cart',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                            size: 32,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cartpage()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(padding: EdgeInsets.all(8)),
                                        Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                225, 240, 237, 237),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Icon(
                                            Icons.shopping_bag_outlined,
                                            size: 60,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          children: const [
                                            Padding(padding: EdgeInsets.all(8)),
                                            Text(
                                              'T-shirt',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '\$3/item',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              '\$6',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
          
                                    // SizedBox(width: 150),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                              radius: 12,
                                              child: Icon(
                                                Icons.remove,
                                              )),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: Icon(Icons.add),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          'Total Price(4):              \$46.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height:MediaQuery.of(context).size.height*0.05,
                          width:MediaQuery.of(context).size.width*0.5,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Center(
                                child: Text(
                                  'Checkout',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Icon(Icons.fingerprint)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
