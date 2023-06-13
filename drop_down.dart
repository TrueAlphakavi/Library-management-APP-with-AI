import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class drop_down extends StatefulWidget {
  @override
  State<drop_down> createState() => _drop_downState();
}

class _drop_downState extends State<drop_down> {
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  final List<String> items = [
    'Fiction',
    'Non-fiction',
    'Mystery',
    'Thriller',
    'Science fiction',
    'Fantasy',
    'Romance',
    'Historical fiction',
    'Biography',
    'Autobiography',
    'Horror',
    'Adventure',
    'Crime',
    'Young adult',
    'Poetry',
    'Drama',
    'Comedy',
    'Satire',
    'Self-help',
    'Travel',
    'Science',
    'Philosophy',
    'Religion',
    'Art',
    'Business',
    'Economics',
    'Psychology',
    'Sociology',
    'History',
  ];

  String? selectedValue;

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.grey.shade200,



     
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          
          isExpanded: true,
          hint: Text(
            'Search book by Genere',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          
          buttonStyleData: const ButtonStyleData(
            height: 50,
            width: 200,
            
           
          ),
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 200,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
     
    
          dropdownSearchData: DropdownSearchData(
            searchController: textEditingController,
            searchInnerWidgetHeight: 50,
            searchInnerWidget: Container(
              // color: Colors.blue,
              height: 50,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 4,
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                expands: true,
                maxLines: null,
                controller: textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search for the Gnere...',
                  hintStyle: const TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            searchMatchFn: (item, searchValue) {
              return (item.value.toString().contains(searchValue));
            },
          ),
          //This to clear the search value when you close the menu
          onMenuStateChange: (isOpen) {
            if (!isOpen) {
              textEditingController.clear();
            }
          },
        ),
      ),
    );
  }
}
