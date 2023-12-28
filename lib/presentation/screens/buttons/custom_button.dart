import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  const CustomButton({super.key, 
    required this.text,
    this.onPressed,
  });

  final String text;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          // focusColor: Colors.green,
          // splashColor: Colors.amber,
          // highlightColor: Colors.red,

          focusColor: Colors.green,
          splashColor: Colors.grey.withOpacity(0.4),
          highlightColor: colors.primary.withOpacity(0.1),

          onTap: onPressed as void Function()?,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
