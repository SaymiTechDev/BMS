import 'package:bms/app/controller/admin_controller.dart';
import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/controller/finance_controller.dart';
import 'package:bms/app/controller/login_controller.dart';
import 'package:bms/app/controller/products_controller.dart';
import 'package:bms/app/controller/purchase_controller.dart';
import 'package:bms/app/controller/transaction_controller.dart';
import 'package:bms/app/screens/admin/admin.dart';
import 'package:bms/app/screens/banking/banking_screen.dart';
import 'package:bms/app/screens/contacts/contacts_screen.dart';
import 'package:bms/app/screens/contacts/new_contact.dart';
import 'package:bms/app/screens/dashboard.dart';
import 'package:bms/app/screens/finance/finance_screen.dart';
import 'package:bms/app/screens/inventory/inventory_screen.dart';
import 'package:bms/app/screens/login.dart';
import 'package:bms/app/screens/production/production_screen.dart';
import 'package:bms/app/screens/products/products_screen.dart';
import 'package:bms/app/screens/purchace/purchase_screen.dart';
import 'package:bms/app/screens/settings/settings_screen.dart';
import 'package:bms/app/screens/transaction/transaction_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String login = '/login';
  static const String dashboard = '/home';
  static const String admin = '/admin';
  static const String contacts = '/contacts';
  static const String newContact = '/contacts/new';
  static const String settings = '/settings';
  static const String trans = '/trans';
  static const String purchase = '/purchase';
  static const String production = '/production';
  static const String inventory = '/inventory';
  static const String finance = '/finance';
  static const String banking = '/banking';
  static const String products = '/products';

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
      page: () => const ContactsScreen(),
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
    GetPage(
      name: admin,
      page: () => const Admin(),
      binding: BindingsBuilder(() {
        Get.put<AdminController>(AdminController());
      }),
    ),
    GetPage(
      name: banking,
      page: () => const BankingScreen(),
    ),
    GetPage(
      name: finance,
      page: () => const FinanceScreen(),
      binding: BindingsBuilder(() {
        Get.put<FinanceController>(FinanceController());
      }),
    ),
    GetPage(
      name: inventory,
      page: () => const InventoryScreen(),
    ),
    GetPage(
      name: production,
      page: () => const ProductionScreen(),
    ),
    GetPage(
      name: products,
      page: () => const ProductsScreen(),
      binding: BindingsBuilder(() {
        Get.put<ProductsController>(ProductsController());
      }),
    ),
    GetPage(
      name: trans,
      page: () => const TransactionScreen(),
      binding: BindingsBuilder(() {
        Get.put<ContactsController>(ContactsController());
        Get.put<ProductsController>(ProductsController());
        Get.put<TransactionController>(TransactionController());
      }),
    ),
    GetPage(
      name: purchase,
      page: () => const PurchaseScreen(),
      binding: BindingsBuilder(() {
        Get.put<PurchaseController>(PurchaseController());
      }),
    ),
    GetPage(
      name: settings,
      page: () => const SettingsScreen(),
    ),
  ];
}
