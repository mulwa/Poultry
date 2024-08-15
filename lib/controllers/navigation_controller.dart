import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class NavigationController extends GetxController {
  RxInt selectedTab = 0.obs;

  onTabSelected(int tabIndex){
    selectedTab.value = tabIndex;
  }

}