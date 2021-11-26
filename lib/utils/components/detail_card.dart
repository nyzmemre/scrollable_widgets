import 'package:flutter/material.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';

class DetailCard extends StatelessWidget {
  final String text;
  const DetailCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: context.horizontalHighPadding,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          shadowColor: Colors.grey.shade600,
          elevation: 5,
          child: Text(
            "$text",
            textAlign: TextAlign.center,
          )),
    );
  }
}
