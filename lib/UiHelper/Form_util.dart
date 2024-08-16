import 'dart:ffi';

import 'package:flutter/material.dart';

class textField extends StatefulWidget{

  TextEditingController Controller = TextEditingController();
  final String labelName;
  final TextInputType keyboardType;

  textField({
    super.key,
    required this.Controller,
    required this.labelName,
    this.keyboardType = TextInputType.text
  });

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {

  late FocusNode myFocusNode;

  @override
  void initState(){
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose(){
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenwidth*0.9,
      child: TextFormField(
        focusNode: myFocusNode,
        controller: widget.Controller,
        keyboardType: widget.keyboardType,
        cursorColor: const Color(0xff2CB696),
        decoration: InputDecoration(
            label: Text(widget.labelName),
            labelStyle: const TextStyle(color: Color(0xff33404F)),
            floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                    color: Color(0xff2CB696),
                    width: 1.5
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                  color: Color(0xff33404F),
                )
            )
        ),
      ),
    );
  }
}

class DropDown<T> extends StatelessWidget{
  final String labelName;
  final  T? value;
  final List<T> items;
  final ValueChanged<T?> onchanged;

  const DropDown({
    super.key,
    required this.labelName,
    required this.value,
    required this.items,
    required this.onchanged
});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return  SizedBox(
      width: screenwidth * 0.9,
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            label: Text(labelName),
            labelStyle: const TextStyle(color: Color(0xff33404F)),
            floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                    color: Color(0xff2CB696),
                    width: 1.25
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                    color: Color(0xff33404F)
                )
            )
        ),
        value: value,
        items: items.map(
                (item)=>DropdownMenuItem(
              value: item,
              child: Text(item.toString()),
            )
        ).toList(),
        dropdownColor: Colors.white,
        onChanged: onchanged
      ),
    );
  }
}


class switchTile<T> extends StatelessWidget{
  final bool value;
  final String title;
  final ValueChanged<bool> onchanged;

  const switchTile({
    required this.value,
    required this.title,
    required this.onchanged
});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.9,
      child: SwitchListTile(
          title: Text(title),
          activeColor: Colors.white,
          activeTrackColor: const Color(0xff00DDA3),
          inactiveTrackColor: Colors.grey[200],
          inactiveThumbColor: Colors.grey[400],
          value: value,
          onChanged: onchanged
          ),
    );
}
}