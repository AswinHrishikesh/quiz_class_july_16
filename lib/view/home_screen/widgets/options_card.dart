import 'package:flutter/material.dart';

class optionsCard extends StatelessWidget {
  const optionsCard({
    super.key,
    required this.option,
    this.onOpitonsTapped,
    this.borderColor,
  });

  final String option;
  final Color? borderColor;
  final void Function()? onOpitonsTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOpitonsTapped,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.grey.shade800,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                option,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Icon(
              Icons.radio_button_off,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
