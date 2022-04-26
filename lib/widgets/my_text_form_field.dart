// ignore_for_file: use_key_in_widget_constructors

import '../consts/colors.dart';
import '../provider/media_query.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Icon? iconn;
  const MyTextFormField({
    required this.controller,
    required this.label,
    this.iconn,
  });

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(-4, -4),
            blurRadius: 6,
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(4, 4),
            blurRadius: 6,
            spreadRadius: -2,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(),
        decoration: InputDecoration(
          focusColor: focusColor,
          fillColor: bgColor,
          filled: true,
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: iconn,
          prefixIconColor: primaryColor,
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
