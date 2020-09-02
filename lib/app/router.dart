import 'package:auto_route/auto_route_annotations.dart';
import 'package:todo/ui/views/allTodo/allTodo_view.dart';
import 'package:todo/ui/views/home/home_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomeView, initial: true, name: 'HomeViewRouter'),
  MaterialRoute(page: AllTodoView, name: 'AllTodoViewRouter'),
])
class $Router {}
