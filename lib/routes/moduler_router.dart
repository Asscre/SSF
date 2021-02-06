import 'package:ssf/page/moduler/modeuler_test_page.dart';

final Map<String, Function> modulerRouter = {
  'modulerPage': (String name) => (_) => ModulerTestPage(name),
};
