import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, this.hint, this.label, this.onTap, this.suffixIcon, this.capitalization, this.textFormatter, this.controller, this.maxLength, this.obscure, this.inputType});

  final String? hint;
  final String? label;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final TextCapitalization? capitalization;
  final List<TextInputFormatter>? textFormatter;
  final TextEditingController? controller;
  final int? maxLength;
  final bool? obscure;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(text: label ?? "", fontSize: 14.sp, fontWeight: kSemiBold),
        SizedBox(
          height: 45.h,
          child: TextField(
            textCapitalization: capitalization ?? TextCapitalization.none,
            inputFormatters: textFormatter,
            textInputAction: kTextInputAction,
            controller: controller,
            maxLength: maxLength,
            obscureText: obscure ?? false,
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hint ?? "",
              isDense: true,
              counterText: "",
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(borderSide: BorderSide(width: 0.5.w)),
            ),
          ),
        ),
      ],
    );
  }
}
