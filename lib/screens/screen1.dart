import 'package:app1/blocs/bloc_doctor/cubit/doctor_cubit.dart';
import 'package:app1/components/timealarm.dart';
import 'package:app1/models/Alarm.dart';
import 'package:app1/screens/add_patient.dart';
import 'package:app1/screens/login_screen.dart';
import 'package:app1/screens/screen2.dart';
import 'package:app1/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app colors/app_colors.dart';
import '../config/app_navigator.dart';

class Appointments extends StatefulWidget {
  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  void initState() {
    DoctorCubit.get(context).geetDate();
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<DoctorCubit, DoctorState>(
      listener: (context, state) {},
      builder: (context, state)  {

          var cubit= DoctorCubit.get(context);

          return Scaffold(

              backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.kMainColor,
              child: Icon(Icons.person_add_sharp),
              onPressed: (){
                  AppNavigator.appNavigator(context, false, Addpatient());
              },
            ),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                IconButton(onPressed: (){
                 AppNavigator.appNavigator(context, false, LoginScreen());
                  }, icon: Icon(Icons.logout,
                color: Colors.red[600],
                ))
              ],
            ),
              body:
              cubit.allPatientRequest==null?
              Center(child: CircularProgressIndicator(
                color: AppColors.kMainColor,
              ),):
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                     shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount:cubit.allPatientRequest!.data!.data!.length ,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: (){
                          
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IntrinsicWidth(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Text(cubit.allPatientRequest!.data!.data![index].name!,
                                          style: TextStyle(
                                            color: AppColors.kMainColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          children: [
                                            Icon(Icons.alarm),
                                            Text(cubit.allPatientRequest!.data!.data![index].visitTime!)
                                          ],
                                        ),
                                      ),
                                      // ignore: prefer_const_constructors
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(
                                          color: AppColors.kMainColor,
                                          thickness: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                               Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
          );
        },
    );
  }
}
