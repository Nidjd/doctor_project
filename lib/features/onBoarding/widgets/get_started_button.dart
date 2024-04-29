import 'package:doc_project/core/helpers/extensions.dart';
import 'package:doc_project/core/routing/routes.dart';
import 'package:doc_project/core/theming/colors.dart';
import 'package:doc_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          ColorManager.mainBlue,
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(
            double.infinity,
            52.h,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'Get Started',
        style: Styles.font16WhiteSemiBold,
      ),
    );
  }
}
