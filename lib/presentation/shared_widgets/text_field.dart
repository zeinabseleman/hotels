import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class BoxInputField extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final String title;
  final bool? isHeading;
  final bool? isRequired;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final Color? color;
  final TextAlign? textAlign;
  final void Function()? trailingTapped;
  final void Function(String)? onchange;
  final Function(String?)? validator;
  final List<TextInputFormatter>? textInputFormatter;
  final OutlineInputBorder? onFocusBorder;
  final OutlineInputBorder? border;
  final OutlineInputBorder? onEnabledBorder;
  final OutlineInputBorder? disabledBorder;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String? val)? validate;
  final String errorMessage;
  final bool? autofocus;
  final int? maxLines;
  final bool isNote;
  const BoxInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.textInputFormatter,
    this.isRequired = false,
    this.validator,
    this.validate,
    this.errorMessage = '',
    this.onchange,
    this.isHeading = false,
    this.title = '',
    this.leading,
    this.textAlign,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.color,
    this.border,
    this.onEnabledBorder,
    this.onFocusBorder,
    this.disabledBorder,
    this.textInputAction,
    this.onFieldSubmitted,
    this.autofocus,
    this.maxLines,
    this.isNote=false
  }) : super(key: key);

  @override
  State<BoxInputField> createState() => _BoxInputFieldState();
}

class _BoxInputFieldState extends State<BoxInputField> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: white,
       borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
      child: TextFormField(
        textAlign: widget.textAlign ?? TextAlign.center,
        inputFormatters: widget.textInputFormatter,
        maxLines:widget.isNote==true ? widget.maxLines:1 ,
        validator: (widget.validate == null)
            ? (value) {
          if (value == null || value.isEmpty && widget.errorMessage != '') {
            return widget.errorMessage;
          }
          return null;
        }
            : widget.validate,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        style: const TextStyle( color: black),
        obscureText: (widget.password) ? showPassword : widget.password,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: primaryColor),
          hintText: widget.placeholder,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          filled: true,
          fillColor: widget.color ?? white,
          enabled: true,
          disabledBorder: widget.disabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
          prefixIcon: widget.leading,
          prefixIconConstraints: BoxConstraints(
              maxWidth: 30.w,
              minWidth: 30.w,
              maxHeight: 18.h,
              minHeight: 18.h
          ),
          suffixIcon: (widget.password)
              ? InkWell(
            onTap: () {
              showPassword = !showPassword;
              setState(() {});
            },
            child: (!showPassword)
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          )
              : widget.trailing,
          border: widget.border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: borderColor,
                    width: 0.5
                ),
              ),
          enabledBorder: widget.onEnabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: borderColor,
                    width: 0.5
                ),
              ),
          focusedBorder: widget.onFocusBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: borderColor,
                  width: 0.5
                ),
              ),
        ),
        onChanged: widget.onchange ?? (value) {},
        autofocus: widget.autofocus ?? false,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: widget.onFieldSubmitted,
      ),
    );
  }
}
