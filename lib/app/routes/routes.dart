import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/controller/login_controller.dart';
import 'package:bms/app/screens/contacts/contacts_page.dart';
import 'package:bms/app/screens/contacts/new_contact.dart';
import 'package:bms/app/screens/dashboard.dart';
import 'package:bms/app/screens/login.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = '/login';
  static const String dashboard = '/home';
  static const String contacts = '/contacts';
  static const String newContact = '/contacts/new';

  static List<GetPage> routesList = [
    GetPage(
      name: login,
      page: () => const Login(),
      binding: BindingsBuilder(() {
        Get.put<LoginController>(LoginController());
      }),
    ),
    GetPage(
      name: dashboard,
      page: () => const Dashboard(),
    ),
    GetPage(
      name: contacts,
      page: () => const ContactsPage(),
      binding: BindingsBuilder(() {
        Get.put<ContactsController>(ContactsController());
      }),
    ),
    GetPage(
      name: newContact,
      page: () => const NewContact(),
      binding: BindingsBuilder(() {
        Get.put<ContactsController>(ContactsController());
      }),
    ),
  ];
}
