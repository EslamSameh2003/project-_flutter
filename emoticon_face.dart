import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonface;
  final bool selected;
  final VoidCallback onTap;
  const EmoticonFace({
    Key? key,
    required this.emoticonface,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: selected? Colors.black87 :Colors.black12, borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            emoticonface,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
