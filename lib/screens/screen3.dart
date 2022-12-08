import 'dart:ffi';

import 'package:app1/blocs/bloc_doctor/cubit/doctor_cubit.dart';
import 'package:app1/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatrentAccount extends StatelessWidget {
  const PatrentAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorCubit, DoctorState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
      appBar: AppBar(
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
                'Patient Account',
                style: TextStyle(fontSize: 28),
              )
            ],
          ),
          actions: [Icon(Icons.segment_outlined)]),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  radius: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(99),
                    child: Image.asset('images/patient.jpg'),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'dumitru Simona',
                    style: TextStyle(fontSize: 26),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'MeDicAl history',
                        style: TextStyle(fontSize: 19),
                      ))
                ],
              )
            ],
          ),
          SizedBox(
            height: 49,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 42,
                      ),
                      Text(
                        '08 00 - 09 30',
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_iphone,
                        size: 42,
                      ),
                      Text('07343677728',
                          style: TextStyle(fontSize: 24, color: Colors.indigo))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 42,
                      ),
                      Expanded(
                          child: Text(
                              '49 Nerva traian Streat , Bucharest,02 Brasov',
                              style: TextStyle(fontSize: 24)))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.description, size: 42),
                      Expanded(
                          child: Text(
                              'medical tests are pergormed to verfy the state of health',
                              style: TextStyle(
                                  fontSize: 24, color: Colors.indigo)))
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Start Procedures',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  child: Text(
                    'EDIT',
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[700])),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccount(),));
                  },
                  child: Text(
                    'BACK',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  child: Text(
                    'Patient Missing',
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  
      },
    );
  }
}
