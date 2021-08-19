import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SignUpAdditionalController extends GetxController {
  String phone;
  String _errorText;
  String address;
  List<String> _genderList = ['Male', 'Female', 'Others', 'Undecided'];
  String get errorText => _errorText;

  final phoneController = TextEditingController().obs;
  final addressController = TextEditingController().obs;
  final selectedGender = 'Male'.obs;
  final _dob = DateTime.now().obs;
  List<String> get genderList => _genderList;
  DateTime get dob => _dob.value;
  String get dateOfBirth => dateToString(_dob.value);

  void updateDob(DateTime date) {
    _dob.value = date;
  }

  updateGender(String newGender) => selectedGender.value = newGender;

  String dateToString(DateTime dateTime) {
    if (dateTime == null) {
      return 'Not found';
    }
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }

  bool validateAdditionalData() {
    phone = phoneController.value.text;
    address = addressController.value.text;
    
    if (phone.length < 10) {
      _errorText = 'Phone number is less than 10 digits';
      return false;
    } else if (dateToString(_dob.value) == dateToString(DateTime.now())) {
      _errorText = 'Please select a valid date of birth';
      return false;
    } else if (address.length < 1) {
      _errorText = 'Address seems fake';
      return false;
    } else {
      return true;
    }
  }
}
