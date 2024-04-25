import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinterest_clone/screens/log-in/sign-up/landing_page.dart';
import 'package:pinterest_clone/widgets/buttons.dart';

import '../../../../models/country_state_models.dart' as cs_model;
import '../../../../models/country_state_repo.dart';
import '../../../../widgets/sign-up_navigation.dart';

class SignUpLocations extends StatefulWidget {
  const SignUpLocations({super.key});

  @override
  State<SignUpLocations> createState() => _SignUpLocationsState();
}

class _SignUpLocationsState extends State<SignUpLocations> {
  final CountryStateCityRepo _countryStateCityRepo = CountryStateCityRepo();

  List<String> countries = [];
  cs_model.CountryStateModel countryStateModel =
      cs_model.CountryStateModel(error: false, msg: '', data: []);

  String selectedCountry = 'Select Country';
  String selectedState = 'Select State';
  bool isDataLoaded = false;

  String finalTextToBeDisplayed = '';

  getCountries() async {
    countryStateModel = await _countryStateCityRepo.getCountriesStates();
    countries.add('Select Country');
    for (var element in countryStateModel.data) {
      countries.add(element.name);
    }
    isDataLoaded = true;
    setState(() {});
  }

  @override
  void initState() {
    getCountries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          const SignUpNavigator(selectedIndex: 4),
          Center(
            child: !isDataLoaded
                ? const CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 30,),
                        Text(
                          'Where do you live?',
                          style: GoogleFonts.inter(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Text(
                          'This helps us find you more relevant content. We won’t show it on your profile',
                          style: GoogleFonts.inter(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 380,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 2, color: const Color(0xFFFFFFFF))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: DropdownButton(
                              isExpanded: true,
                              value: selectedCountry,
                              dropdownColor: Colors.black, 
                              underline: const SizedBox(), 
                              icon: const Icon(
                                IconData(0xf579, fontFamily: 'MaterialIcons', matchTextDirection: true),
                                color: Colors.white, 
                              ),
                              items: countries.map((String country) {
                                return DropdownMenuItem(
                                  value: country,
                                  child: Text(
                                    country,
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (selectedValue) {
                                setState(() {
                                  selectedCountry = selectedValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          const Spacer(),
          const ButtonWidget(text: 'Next', textColor: 'white', buttonColor: 'red', nextPage: LandingPage()),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

