import 'package:flutter/cupertino.dart';

class OnboardingModels {
  String title;
  String description;
  TextAlign textAlign;
  OnboardingModels(this.title, this.description, this.textAlign);
}

var onboardingMap = [
  {
    "Title": "Fresh From The Oven",
    "Description": "Your donuts is always fresh from the oven",
    "TextAlign": TextAlign.center
  },
  {
    "Title": "Many Varians For You",
    "Description": "Form basic to unique taste, developed carefully.",
    "TextAlign": TextAlign.center
  },
  {
    "Title": "Topping Creation",
    "Description": "Add your custom topping to get extra experience.",
    "TextAlign": TextAlign.center
  },
  {
    "Title": "Taste Good",
    "Description": "Enjoy every bite of your donuts.",
    "TextAlign": TextAlign.center
  }
];

List<OnboardingModels> onboardingList = onboardingMap
    .map((item) =>
        OnboardingModels(item['Title'], item['Description'], item['TextAlign']))
    .toList();
