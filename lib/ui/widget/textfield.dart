import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  final double marginBottom;

  const CustomTextField(
      {super.key,
      required this.label,
      this.isPassword = false,
      this.controller,
      this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
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
          ),
        ),
        SizedBox(
          height: marginBottom,
        ),
      ],
    );
  }
}
