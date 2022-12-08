part of 'doctor_cubit.dart';

@immutable
abstract class DoctorState {}

class DoctorInitial extends DoctorState {}

class DoctorRegisterSuccess extends DoctorState {}

class DoctorRegisterLoding extends DoctorState {}

class DoctorRegisterError extends DoctorState {}



class DoctorLoginError extends DoctorState {}

class DoctorLoginSuccess extends DoctorState {}

class DoctorLoginLoding extends DoctorState {}

class getDataSuccess extends DoctorState{}
class getDataLoding extends DoctorState{}
class getDataError extends DoctorState{}

class patientRegisterSuccess extends DoctorState {}
class patientRegisterLoding extends DoctorState {}
class patientRegisterError extends DoctorState {}

