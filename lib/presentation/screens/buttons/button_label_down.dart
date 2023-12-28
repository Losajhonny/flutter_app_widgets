import 'package:flutter/material.dart';

class ButtonLabelDown extends StatelessWidget {
  const ButtonLabelDown({
    super.key,
    this.label,
    this.icon,
    this.onPressed,
  });

  final String? label;
  final Widget? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                icon ?? const SizedBox(),
                const SizedBox(height: 10),
                Text(
                  label ?? "",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
