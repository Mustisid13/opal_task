import 'package:flutter/material.dart';
class CustomDropDown extends StatelessWidget {
  final String name;
  const CustomDropDown({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DropdownButtonFormField(
          items: const [
            DropdownMenuItem(
              child: Text(""),
              value: "",
            )
          ],
          decoration: InputDecoration(
              hintText: name,
              hintStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
              filled: true,fillColor: Colors.white
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
