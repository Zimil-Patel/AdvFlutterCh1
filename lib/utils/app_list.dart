import '../app list/screens/app list view/model/app_model.dart';
import '../counter app using provider/counter_app.dart';
import '../intro using shared preferences/intro_using_shared_preferences.dart';
import '../stepper widget/stepper_app.dart';
import '../switch theme using provider/provider_theme_switch.dart';
import '../switch theme/theme_app.dart';

List<AppModel> appList = [
  AppModel(title: '1.1 Switch Dark Theme to Light Theme', widget: const DefaultThemeApp()),
  AppModel(title: '1.2 Create Registration Page using Stepper Widget', widget: const StepperApp()),
  AppModel(title: '1.4.1 Provider & Change Theme using Provider', widget: const ThemeSwitchUsingProvider()),
  AppModel(title: '1.4.2 Counter App using Provider', widget: const CounterApp()),
  AppModel(title: '1.5 One Time Intro Screen in Flutter ', widget: const IntroUsingSharedPreferences()),
];
