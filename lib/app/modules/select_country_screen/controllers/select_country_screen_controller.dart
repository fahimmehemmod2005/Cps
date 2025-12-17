import 'package:country_picker/country_picker.dart';
import 'package:cps/app/modules/signup_steps_screen/views/signup_steps_screen_view.dart';
import 'package:get/get.dart';

class SelectCountryScreenController extends GetxController {
  var selectedCountry = Rxn<Country>();
  var searchQuery = ''.obs;
  var filteredCountries = <Country>[].obs;
  var allCountries = <Country>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCountries();
  }

  void loadCountries() {
    // Get all countries from country_picker package
    allCountries.value = CountryService().getAll();
    filteredCountries.value = allCountries;
    
    // Set default selected country to United States
    selectedCountry.value = allCountries.firstWhere(
      (country) => country.countryCode == 'US',
      orElse: () => allCountries.first,
    );
  }

  void selectCountry(Country country) {
    selectedCountry.value = country;
  }

  void searchCountry(String query) {
    searchQuery.value = query;
    if (query.isEmpty) {
      filteredCountries.value = allCountries;
    } else {
      filteredCountries.value = allCountries
          .where((country) =>
              country.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  void onNextPressed() {
    if (selectedCountry.value != null) {
      // Navigate to next screen or perform action
      Get.to(SignupStepsScreenView(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 400)
      );
      Get.snackbar(
        'Selected Country',
        selectedCountry.value!.name,
        snackPosition: SnackPosition.TOP,
        
      );
    }
  }
}
