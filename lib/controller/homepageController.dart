import 'package:get/get_state_manager/get_state_manager.dart';

class homepageController extends GetxController {
  List imageIcon = [
    {'img': 'assets/images/stethoscope.png', 'Category': 'General'},
    {'img': 'assets/images/tooth.png', 'Category': 'Dentist'},
    {'img': 'assets/images/doctor.png', 'Category': 'Emergency'},
    {'img': 'assets/images/pulse.png', 'Category': 'Cardio'},
    {'img': 'assets/images/stethoscope.png', 'Category': 'General'},
    {'img': 'assets/images/tooth.png', 'Category': 'Dentist'},
    {'img': 'assets/images/doctor.png', 'Category': 'Emergency'},
    {'img': 'assets/images/pulse.png', 'Category': 'Cardio'}
  ];
  List HoursList = [
    '9.00',
    '9.30',
    '10.00',
    '10.30',
    '11.00',
    '11.30',
    '12.00',
    '1.00',
    '4.00',
    '5.00',
    '6.00'
  ];
  List docInfo = [
    {
      'img': 'assets/Icons/patients.png',
      'title': '500+',
      'subTitle': 'Patients'
    },
    {
      'img': 'assets/Icons/experience.png',
      'title': '10+ year',
      'subTitle': 'Experience'
    },
    {'img': 'assets/Icons/service.png', 'title': '24/4', 'subTitle': 'Service'},
    {'img': 'assets/Icons/chat.png', 'title': 'Chat', 'subTitle': 'Anytime'},
  ];
  List doctorData = [
    {
      'img': 'assets/doctors/doctor1.png',
      'name': 'Dr.Monty pilote',
      'category': 'Cardiologist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor2.png',
      'name': 'Dr.Henna Montena',
      'category': 'Neurologist',
      'distance': '1.6Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor3.png',
      'name': 'Dr.Ashutosh Rana',
      'category': 'Multi specialist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor3.png',
      'name': 'Dr.Ashutosh Rana',
      'category': 'Multi specialist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor3.png',
      'name': 'Dr.Ashutosh Rana',
      'category': 'Multi specialist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor1.png',
      'name': 'Dr.Monty pilote',
      'category': 'Cardiologist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor2.png',
      'name': 'Dr.Henna Montena',
      'category': 'Neurologist',
      'distance': '1.6Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
    {
      'img': 'assets/doctors/doctor3.png',
      'name': 'Dr.Ashutosh Rana',
      'category': 'Multi specialist',
      'distance': '1.5Km Away',
      'rating': '4.5',
      'about':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet vulputate nunc, urna non, in facilisis adipiscing nibh risus. Vitae molestie laoreet pellentesque facilisi aliquet semper rutrum id. ',
      'time': [
        'Monday - Wednesday, 9:00 AM - 1:00 PM',
        'Thursday - Saturday, 4:30 PM - 10:00 PM'
      ]
    },
  ];
}
