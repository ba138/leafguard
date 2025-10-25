import 'package:flutter/material.dart';
import 'package:leafguard/const/app_fonts.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/widget/my_text.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    this.controller,
    this.hint,
    this.label,
    this.onChanged,
    this.isObSecure = false,
    this.marginBottom = 16.0,
    this.maxLines = 1,
    this.filledColor,
    this.hintColor,
    this.haveLabel = true,
    this.labelSize,
    this.prefix,
    this.suffix,
    this.labelWeight,
    this.kBorderColor,
    this.kFocusBorderColor,
    this.isReadOnly,
    this.onTap,
    this.compulsory = false,
    this.focusNode,
    this.validator,
    this.keyboardType,
  }) : super(key: key);
  String? label, hint;

  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure, haveLabel, isReadOnly;
  double? marginBottom;
  int? maxLines;
  double? labelSize;
  FocusNode? focusNode;
  Color? filledColor, hintColor, kBorderColor, kFocusBorderColor;
  Widget? prefix, suffix;
  FontWeight? labelWeight;
  bool? compulsory;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (label != null)
            Row(
              children: [
                MyText(
                  text: label ?? '',
                  size: 16,
                  color: AppColors.primary,
                  paddingBottom: 6,
                  weight: labelWeight ?? FontWeight.w600,
                ),
                if (compulsory == true)
                  MyText(
                    text: ' *',
                    weight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
              ],
            ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: TextFormField(
              enableSuggestions: false,
              autocorrect: false,
              focusNode: focusNode,
              keyboardType: keyboardType,
              onTap: onTap,
              textAlignVertical: prefix != null || suffix != null
                  ? TextAlignVertical.center
                  : null,
              cursorColor: AppColors.primary,
              cursorHeight: 18,
              maxLines: maxLines,
              readOnly: isReadOnly ?? false,
              controller: controller,
              onChanged: onChanged,
              textInputAction: TextInputAction.next,
              obscureText: isObSecure!,
              obscuringCharacter: '*',
              validator: validator,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
                fontFamily: AppFonts.DMSANS,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: filledColor ?? AppColors.primary.withOpacity(0.05),
                prefixIcon: prefix,
                suffixIcon: suffix,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: maxLines! > 1 ? 15 : 0,
                ),
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.DMSANS,
                  color: hintColor ?? AppColors.primary,
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.primary,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kFocusBorderColor ?? AppColors.primary,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
