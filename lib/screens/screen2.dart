import 'package:app1/blocs/bloc_doctor/cubit/doctor_cubit.dart';
import 'package:app1/screens/screen1.dart';
import 'package:app1/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorCubit, DoctorState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var cubit = DoctorCubit.get(context);
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
            '${cubit.jlogin!.data!.name}',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text(
            '${cubit.jlogin!.data!.title}',
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
                        '${cubit.jlogin!.data!.email}',
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
                        '${cubit.jlogin!.data!.address}',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
 
      },
    );
  }
}
