import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class CityInput extends StatelessWidget {
  const CityInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: tCity,
          labelStyle: TextStyle(
            color: tDarkColor,
            fontSize: 11,
            fontFamily: 'Inter',
          ),
          filled: true,
          hintStyle: TextStyle(
            fontSize: 12,
            fontFamily: 'Inter',
          ),
          fillColor: tWhiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: tButtonColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: tButtonColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hoverColor: tWhiteColor,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0).copyWith(left: 10.0),
        ),
        style: TextStyle(
          color: tDarkColor,
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        icon: Icon(
          Icons.arrow_drop_down,
          color: tDarkColor,
        ),
        dropdownColor: tWhiteColor,
        items: [
          'Алматы',
          'Нур-Султан',
          'Шымкент',
          'Тараз',
          // Добавьте другие города по необходимости
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: tDarkColor,
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          // Обработка изменения выбранного города
        },
        selectedItemBuilder: (BuildContext context) {
          return [
            'Алматы',
            'Нур-Султан',
            'Шымкент',
            'Караганда',
            'Актобе',
            'Тараз',
            'Павлодар',
            'Усть-Каменогорск',
            'Семей',
            'Атырау',
            // Добавьте другие города по необходимости
          ].map<Widget>((String value) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: tDarkColor,
                ),
              ),
            );
          }).toList();
        },
      ),
    );
  }
}