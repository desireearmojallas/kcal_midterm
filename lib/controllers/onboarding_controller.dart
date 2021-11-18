import 'package:kcal_midterm/models/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('kcal', 'assets/1st.png', 'Eat Healthy',
        'Maintaining good health should be the primary focus of everyone.'),
    OnboardingInfo('kcal', 'assets/2nd.png', 'Healthy Recipes',
        'Browse thousands of healthy recipes from all over the world.'),
    OnboardingInfo('kcal', 'assets/3rd.png', 'Track Your Health',
        'With amazing inbuilt tools you can track your progress.'),
  ];
}
