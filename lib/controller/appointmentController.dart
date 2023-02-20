import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class BookAppointmentController extends GetxController {
  int selected = -1;
  List<String> gender = ['male', 'female'];
  List<String> Package = ['30 Minutes', '1 Hour', '1.5 Hour', '2 Hour'];
  List<String> paymentmethod = [
    'Phone Pay',
    'Google Pay',
    'Freecharge Pay',
    'Amazon Pay',
    'Credit/Debit card'
  ];
  void changeState(int index) {
    selected = index;
  }
}
