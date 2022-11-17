import 'package:app1/components/timealarm.dart';
import 'package:app1/models/Alarm.dart';
import 'package:app1/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appointments extends StatelessWidget {
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
                'Appointments',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          actions: [Icon(Icons.segment_outlined)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(19),
          child: Column(
            children: [
              Text(
                'Wednesday , 22 May 2019',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'lulan Tuja',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('10:50', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('victoria Olari', style: TextStyle(fontSize: 22)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('13:00', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Diana Stefan', style: TextStyle(fontSize: 22)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('15:20', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Gheorge Popa', style: TextStyle(fontSize: 22)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('16:10', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Alexandru Sandu', style: TextStyle(fontSize: 22)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('16:40', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Dumitru Simona', style: TextStyle(fontSize: 22)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('08:00', style: TextStyle(fontSize: 24))
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
               ElevatedButton(child: Text('next',style: TextStyle(fontSize: 26),) ,onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: ((context) =>MyAccount() )));
            },),
            ],
           
          ),
        ));
  }
}
