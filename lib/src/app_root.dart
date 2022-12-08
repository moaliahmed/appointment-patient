import 'package:app1/blocs/bloc_doctor/cubit/doctor_cubit.dart';
import 'package:app1/screens/Register_Screan.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/login_screen.dart';
import '../screens/screen1.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DoctorCubit(),
          ),
        ],
        child: MaterialApp(
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
