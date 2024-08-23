import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          children: [
            SizedBox(height: 20,),
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
            const Text(
              'Clean in one blink',
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
