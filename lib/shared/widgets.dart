import 'package:car_shasee/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        onPressed: () {},
        fillColor: kButtonBGColor,
        splashColor: kButtonSplashColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'اضافه شاسية',
                style: TextStyle(
                    color: kButtonTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: kButtonIconColor,
                ),
              ),
            ],
          ),
        ),
        shape: const StadiumBorder(),
      );
}
