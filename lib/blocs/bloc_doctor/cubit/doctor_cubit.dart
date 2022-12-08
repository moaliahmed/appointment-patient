import 'package:app1/models/authentication_model.dart';
import 'package:app1/models/login.dart';
import 'package:app1/service/dio_helper/dio_helper.dart';
import 'package:app1/service/sharedPreferans/shared_preferans_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/all_patient_request.dart';
import '../../../service/sharedPreferans/sharedPreferance.dart';

part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorInitial());
  static DoctorCubit get(context) => BlocProvider.of(context);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController titelController = TextEditingController();
  TextEditingController lEmailController = TextEditingController();
  TextEditingController lPasswordController = TextEditingController();


TextEditingController patientName = TextEditingController();
  TextEditingController patirntAddress = TextEditingController();
  TextEditingController patientBrithDate = TextEditingController();
  TextEditingController patientVisitTime = TextEditingController();
  TextEditingController patientDiagnosis = TextEditingController();
  TextEditingController patientId = TextEditingController();

 
  Authentication? authentication;
  DLogin? jlogin;


  register() {
    emit(DoctorRegisterLoding());
    DioHelper.postData(url: 'auth/register', data: {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "title": titelController.text,
      "address": addressController.text
    },
    ).then((value) {
      authentication = Authentication.fromJson(value.data);
      print(authentication!.data!.name.toString());
      emit(DoctorRegisterSuccess());
    }).catchError((onError) {
      print(onError);
      emit(DoctorRegisterError());
    });
  }

  login() {
    emit(DoctorLoginLoding());
    DioHelper.postData(
      url: 'auth/login',
      data: {
        'email': lEmailController.text,
        'password': lPasswordController.text,
      },
    ).then(
      (value) {
        jlogin = DLogin.fromJson(value.data);
        SharedPrefrenceHelper.saveData( key: 'token', value: jlogin!.token);
        emit(DoctorLoginSuccess());
        nameController.clear();
        passwordController.clear();
        print(SharedPrefrenceHelper.getData(key: 'token'));
      },
    ).catchError(
      (e) {
        emit(DoctorLoginError());
        nameController.clear();
        passwordController.clear();
      },
    );
  }
 AllPatientRequest?allPatientRequest;

  void geetDate() {
    emit(getDataLoding());
    DioHelper.getData(
      url: 'doctorpatients',
      query: { 'token': SharedPrefrenceHelper.getData(key : 'token')},
    ).then((value) {
      emit(getDataSuccess());
      allPatientRequest = AllPatientRequest.fromJson(value.data);
      print(value.data);
      
    }).catchError((e) {
      print(e);
      emit(getDataError());
    });
  }

  void addPatientDate(){
    emit(patientRegisterLoding());
    DioHelper.postData(url: 'doctorpatients', 
    data: {
      'name':patientName.text,
      'date_of_birth':"2022-11-14",
      'diagnosis':patientDiagnosis.text,
      'address':patirntAddress.text,
      'visit_time':"2022-11-14",
      
    },
    query:  { 'token': SharedPrefrenceHelper.getData(key : 'token')}
    ).then((value) {
      emit(patientRegisterSuccess());
print(value.data);
    } ).catchError((e){
      emit(patientRegisterLoding());
print(e);
    });
  }

}
