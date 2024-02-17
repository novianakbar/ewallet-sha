import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool isPassword;
  final TextEditingController? controller;
  final double marginBottom;

  const CustomTextField(
      {super.key,
      this.label,
      this.isPassword = false,
      this.controller,
      this.marginBottom = 0,
      this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (label != null)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: isPassword,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
            hintText: hint,
            hintStyle: greyTextStyle,
          ),
        ),
        SizedBox(
          height: marginBottom,
        ),
      ],
    );
  }
}
