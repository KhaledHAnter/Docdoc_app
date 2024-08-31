import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPsquare extends StatelessWidget {
  const OTPsquare({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 75.w,
      child: Center(
        child: TextFormField(
          showCursor: false,
          decoration: InputDecoration(
            fillColor: const Color(0xffFDFDFF),
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()
                .copyWith(borderSide: const BorderSide(color: Colors.black)),
            hintText: "__",
            hintStyle: const TextStyle(
              color: Color(0xffC2C2C2),
            ),
          ),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
          style: Theme.of(context).textTheme.headlineLarge,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffEDEDED),
      ),
    );
  }
}
