import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: [
            Image.asset(
              'images/logo.png',
              height: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'My Account',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
        actions: [Icon(Icons.segment_outlined)],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            radius: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: Image.asset('images/avatir.jpg'),
            ),
          ),
          Text(
            'Maria loana Leonte',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text(
            'HCP Name',
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone_iphone_rounded,
                        size: 48,
                      ),
                      Text(
                        '07434697256',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        size: 48,
                      ),
                      Text(
                        'mariajeonfe@gmail.com',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.work,
                        size: 48,
                      ),
                      Text(
                        '49 Nerva traian Streat , Bucharest',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              height: 50,
              width: 160,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'back',
                  style: TextStyle(fontSize: 32),
                ),
              ))
        ],
      ),
    );
  }
}
