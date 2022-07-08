
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [],dependencies: [
  Singleton(classType: DialogService),
  Singleton(classType: SnackbarService),
  Singleton(classType: NavigationService),
])
class App {

}