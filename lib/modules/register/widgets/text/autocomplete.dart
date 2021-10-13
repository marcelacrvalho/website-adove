import 'package:adove/global/utilities/cities.dart';
import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class AutocompleteWidget extends StatelessWidget {
  final TextEditingController controllerCity;

  const AutocompleteWidget({Key? key, required this.controllerCity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TypeAheadFormField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        controller: controllerCity,
        keyboardType: TextInputType.text,
        style: TextStyle(
          fontSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
          color: Colors.blue,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
          labelStyle: TextStyle(
            fontSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
            color: Colors.blue,
          ),
          hintText: 'Onde se localiza seu negócio?',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: Sizes.isMobile() ? Sizes.body2Mobile : Sizes.body2Site,
          ),
        ),
      ),
      onSuggestionSelected: (String suggestionSelected) {
        controllerCity.text = suggestionSelected;
      },
      itemBuilder: (context, suggestions) {
        return ListTile(
          title: TextWidget(
            text: suggestions,
            textSize: Sizes.isMobile() ? Sizes.body2Mobile : Sizes.body2Site,
          ),
        );
      },
      suggestionsCallback: (String city) => Cities.getSuggestions(city),
    );
  }
}
