import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 240, 237, 237),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'asset/man_face_image.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Clean in one blink',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              const Text(
                'We will use all our strength to shorten the time it takes for the laundry to take place',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                            colors: [Colors.black, Colors.black45])),
                    height: MediaQuery.of(context).size.height *0.2,
                      width: MediaQuery.of(context).size.width *0.8,
                    child: Row(
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Laundry in progress',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Your clothes will come in only in',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 204, 202, 202)),
                            ),
                            Text(
                              'the blink of an eye',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 212, 212, 212)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'CHECK IT!',
                              style: TextStyle(
                                color: Color.fromARGB(255, 25, 200, 31),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 20,)
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Image(image: AssetImage('asset/washing_machine.png'),height: 150,width: 100,)
                        //Image
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Row(
                children: const [
                  Column(
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container( 
                      height: MediaQuery.of(context).size.height *0.1,
                      width: MediaQuery.of(context).size.width *0.2,
                      child:Icon(Icons.shopping_bag_outlined,size: 30,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                     
                      height: MediaQuery.of(context).size.height *0.1,
                      width: MediaQuery.of(context).size.width *0.2,
                      child:Icon(Icons.shopping_cart_checkout_outlined,size: 30,),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *0.1,
                      width: MediaQuery.of(context).size.width *0.2,
                      child: Icon(Icons.alarm_outlined,size: 30,),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                     
                      height: MediaQuery.of(context).size.height *0.1,
                      width: MediaQuery.of(context).size.width *0.2,
                      child: Icon(Icons.add_circle_outline_outlined,size: 30,),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      
                    ),
                   
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
