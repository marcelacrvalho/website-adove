import 'package:adove/global/utilities/cities.dart';
import 'package:adove/global/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class AutocompleteWidget extends StatelessWidget {
  final TextEditingController controllerCity;

  const AutocompleteWidget({Key? key, 
    required this.controllerCity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TypeAheadFormField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        controller: controllerCity,
        keyboardType: TextInputType.text,
        style:  const TextStyle(
            fontSize: kText,
            color: Colors.blue,
          ),
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
          labelStyle: const TextStyle(
            fontSize: kTextSmall,
            color: Colors.blue,
          ),
          hintText: 'Exemplo: Belo Horizonte, Minas Gerais',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: kTextSmall,
          ),
        ),
      ),
      onSuggestionSelected: (String suggestionSelected) {
        controllerCity.text = suggestionSelected;
      },
      itemBuilder: (context, suggestions) {
        return ListTile(
          title: Text(suggestions),
        );
      },
      suggestionsCallback: (String city) => Cities.getSuggestions(city),
    );
  }
}