import 'package:flutter/material.dart';
import 'package:ssf/common/page/not_find_page.dart';
import 'package:ssf/page/home_pege.dart';

import 'moduler_router.dart';

class RouterConfig {
  static Map<String, Function> routes = {
    "/": (context) => HomePage(),
  };

  void initRouters() {
    routes.addAll(modulerRouter);
  }

  static toPage(BuildContext context, String routeName, {dynamic arguments}) {
    if (RouterConfig.routes[routeName] == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => NotFindPage()),
      );
    } else {
      if (arguments == null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: RouterConfig.routes[routeName](),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: RouterConfig.routes[routeName](arguments),
          ),
        );
      }
    }
  }

  static Future toCBPage(BuildContext context, String routeName,
      {dynamic arguments}) async {
    var cbData;
    if (RouterConfig.routes[routeName] == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => NotFindPage()),
      );
    } else {
      if (arguments == null) {
        cbData = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: RouterConfig.routes[routeName](),
          ),
        );
      } else {
        cbData = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: RouterConfig.routes[routeName](arguments),
          ),
        );
      }
    }
    return cbData;
  }
}
