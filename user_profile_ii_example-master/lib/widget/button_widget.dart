import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        EdgeInsets,
        ElevatedButton,
        Key,
        StadiumBorder,
        StatelessWidget,
        Text,
        VoidCallback,
        Widget;

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}
