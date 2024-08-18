import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class textField extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  final String labelName;
  final double? width;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  textField({
    super.key,
    this.width,
    required this.Controller,
    required this.labelName,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    // double screenheight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: widget.width ?? screenwidth * 0.9,
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
              borderSide:
                  const BorderSide(color: Color(0xff2CB696), width: 1.5)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                color: Color(0xff33404F),
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 167, 22, 22), width: 1.5)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 167, 22, 22), width: 1.5)),
          errorStyle: const TextStyle(color: Color.fromARGB(255, 167, 22, 22)),
        ),
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}

class DropDown<T> extends StatelessWidget {
  final String labelName;
  final T? value;
  final List<T> items;
  final ValueChanged<T?> onchanged;

  const DropDown(
      {super.key,
      required this.labelName,
      required this.value,
      required this.items,
      required this.onchanged});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenwidth * 0.9,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
              label: Text(labelName),
              labelStyle: const TextStyle(color: Color(0xff33404F)),
              floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide:
                      const BorderSide(color: Color(0xff2CB696), width: 1.25)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(color: Color(0xff33404F)))),
          value: value,
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item.toString()),
                  ))
              .toList(),
          dropdownColor: Colors.white,
          onChanged: onchanged),
    );
  }
}

class switchTile<T> extends StatelessWidget {
  final bool value;
  final String title;
  final ValueChanged<bool> onchanged;

  const switchTile(
      {required this.value, required this.title, required this.onchanged});

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
          onChanged: onchanged),
    );
  }
}

class otpTitle extends StatelessWidget{
  final void Function(String) onCompleted;
  otpTitle({required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, color: Color(0xff33404F), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Shadow color
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 2), // Shadow position
        ),
      ],
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return SizedBox(
      width: screenwidth * 0.8,
      child: Pinput(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 2,
                width: 25,
                color: const Color(0xff00DDA3),
              ),
            ),
          ],
        ),
        length: 6,
        validator: (s) {
          return s!.length == 6 ? null : 'Pin is incorrect';
        },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        onCompleted: onCompleted,
      ),
    );
  }
}
