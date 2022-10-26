import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key,
    this.autoFocus = false,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText = false

  }) : super(key: key);

  final bool? autoFocus;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode? _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode = FocusNode();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autofocus: widget.autoFocus!,
      validator: widget.validator,
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onFieldSubmitted,
      cursorColor: ColorUI.DARK_BLUE_1,
      cursorWidth: 2,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: LIGHT_PRIMARY_TEXT_STYLE,
        labelText: widget.labelText,
        labelStyle: _focusNode!.hasFocus ? PRIMARY_TEXT_STYLE : LIGHT_PRIMARY_TEXT_STYLE
      ),
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      onTap: _requestFocus,
    );
  }
}