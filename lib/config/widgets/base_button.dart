import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final String label;
  final Color? splashColor;
  final Color? loadingIndicatorColor;
  final bool? isLoading;
  final void Function() onTap;

  const BaseButton({
    Key? key,
    required this.backgroundColor,
    required this.color,
    required this.label,
    required this.onTap,
    this.splashColor,
    this.loadingIndicatorColor,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: isLoading == true ? null : onTap,
        borderRadius: BorderRadius.circular(5),
        splashColor: splashColor ?? Colors.white.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Center(
            child: isLoading == true
                ? SizedBox(
                    height: 18,
                    width: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: loadingIndicatorColor ?? Colors.white,
                    ),
                  )
                : Text(
                    label,
                    style: TextStyle(
                      fontSize: 15,
                      color: color,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
