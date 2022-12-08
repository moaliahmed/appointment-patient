import 'package:app1/app%20colors/app_colors.dart';
import 'package:app1/blocs/bloc_doctor/cubit/doctor_cubit.dart';
import 'package:app1/components/my_textfiled.dart';
import 'package:app1/config/app_navigator.dart';
import 'package:app1/config/toast_config.dart';
import 'package:app1/enums/toast_states.dart';
import 'package:app1/config/app_navigator.dart';
import 'package:app1/screens/login_screen.dart';
import 'package:app1/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class registerScreen extends StatelessWidget {
  const registerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocConsumer<DoctorCubit, DoctorState>(
      listener: (context, state) {
        if(state is DoctorRegisterSuccess){
           ToastConfig.showToast(msg: 'Success', toastStates: ToastStates.Success);
           AppNavigator.appNavigator(context, false, LoginScreen());
        }
        else if(state is DoctorRegisterError){
           ToastConfig.showToast(msg: 'Error', toastStates: ToastStates.Error);
        }
      },
      builder: (context, state) {
        var cubit = DoctorCubit.get(context);
        return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Regester page'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 26,
                      color: AppColors.kWhiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Create your account',
                        style: TextStyle(fontSize: 22),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ?',
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(onPressed: () {
                            AppNavigator.appNavigator(context, false, LoginScreen());
                          }, child: Text('login!'))
                        ],
                      ),
                      MyTextFiled(label: 'name',controller: cubit.nameController),
                      MyTextFiled(label: 'Email',controller: cubit.emailController),
                      MyTextFiled(label: 'password',isPassword: true,controller: cubit.passwordController),
                      MyTextFiled(label: 'Title',controller: cubit.titelController),
                      MyTextFiled(label: 'Address',controller: cubit.addressController),
                      SizedBox(
                        width: 345 ,
                        child: ElevatedButton(
                          onPressed: () {
                           
                             cubit.register();
                          },
                          child: Text(
                            'Registration',
                            style: TextStyle(fontSize: 26),                         
                          ),
                          
                        ),
                      ),SizedBox(height: 12,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  
      },
    );
  }
}
