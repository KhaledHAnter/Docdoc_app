import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:omar_ahmed_app/core/helpers/show_snackbar.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_button.dart';
import 'package:omar_ahmed_app/features/fill_profile/ui/views/widgets/birthday_form.dart';
import 'package:omar_ahmed_app/features/fill_profile/ui/views/widgets/profile_picture_pick.dart';

class FillProfileView extends StatelessWidget {
  const FillProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Fill Your Profiles',
              style: Styles.bold24.copyWith(color: ColorsManager.mainBlue),
            ),
            verticalSpace(8),
            Text(
              'Please take a few minutes to fill out your profile with as much detail as possible.',
              style: Styles.regular14,
            ),
            const Spacer(),
            ProfilePicturePick(
              onTap: () => _pickImage(context),
            ),
            verticalSpace(26),
            const BirthdayForm(),
            const Spacer(
              flex: 2,
            ),
            AppTextButton(
              text: "Submit",
              textStyle: Styles.semiBold16,
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    showSnackbar(context, "Profile picture added successfully");
    // showSnackBar(context, message: 'Profile picture added successfully');
    // final storageRef = FirebaseStorage.instance.ref();
    // final imageRef = storageRef.child('users/${image.name}');
    // final imageBytes = await image.readAsBytes();
    // await imageRef.putData(imageBytes);
  }
}
