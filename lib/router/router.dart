// @CupertinoAutoRouter              
// @AdaptiveAutoRouter              
// @CustomAutoRouter              
import 'package:auto_route/annotations.dart';

import 'package:autoroute/pages/second.page.dart';

import '../pages/first.page.dart';

@MaterialAutoRouter(              
  replaceInRouteName: 'Page,Route',              
  routes: <AutoRoute>[              
    AutoRoute(page: FirstPage, initial: true),              
    AutoRoute(page: SecondPage),              
  ],              
)              
class $AppRouter {}