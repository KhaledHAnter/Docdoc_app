import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RedNotifier extends StatelessWidget {
  const RedNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 4.r,
      backgroundColor: const Color(0xffFF4C5E),
    );
  }
}
