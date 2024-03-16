import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const LoginButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle constStyle = TextStyle(color: Colors.white, fontSize: 18);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            text,
            style: constStyle,
          ),
        ),
      ),
    );
  }
}
