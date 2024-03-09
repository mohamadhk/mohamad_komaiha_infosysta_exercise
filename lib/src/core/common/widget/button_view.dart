import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ButtonType {
  soldButton,
  outlinedButton,
  textButton,
  iconButton,
  textIconButton
}
ButtonStyle roundedButtonStyle({
  Color? color,
  double? borderRadius
}) {
  return ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius??50),
      ),

    ),
    backgroundColor:color!=null? MaterialStateProperty.all<Color>(
      color,

    ):null
  );
}


class ButtonView extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Widget? iconImageSvg;
  final ButtonType buttonType;
  final Function() onPressed;
  final ButtonStyle? buttonStyle;
  final Color? iconColor;
  final Color? textColor;
  final double? width;
  final bool? isDisabled;
  final bool isIconOnTheLeft;
  final TextStyle? textStyle;

  const ButtonView({
    this.title,
    this.icon,
    this.iconImageSvg,
    this.buttonStyle,
    required this.buttonType,
    required this.onPressed,
    this.iconColor,
    this.textColor,
    this.width,
    this.isDisabled,
    super.key,
    this.isIconOnTheLeft = false,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.soldButton:
        return soldButton(context);
      case ButtonType.outlinedButton:
        return outlineButton(context);
      case ButtonType.textButton:
        return textButton(context);
      case ButtonType.iconButton:
        return iconButton(context);
      case ButtonType.textIconButton:
        return textIconButton(context);
    }
  }

  Widget soldButton(BuildContext context) {
    return ElevatedButton(
      onPressed: (isDisabled ?? false)
          ? null
          : () {
              onPressed();
              HapticFeedback.lightImpact();
      },
      style: buttonStyle,
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null && isIconOnTheLeft)
              Icon(
                icon,
                color: iconColor,
              ),
            if (iconImageSvg != null && isIconOnTheLeft)
              SizedBox(child: iconImageSvg),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
              child: Text(
                title ?? '',
                style: textStyle ??
                    Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                  color: textColor?? Colors.white
                ),
              ),
            ),
            if (iconImageSvg != null && !isIconOnTheLeft)
              SizedBox(child: iconImageSvg),
          ],
        ),
      ),
    );
  }

  Widget outlineButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
      },
      style: buttonStyle ??
          ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon),
          Text(title ?? '', style: textStyle ?? TextStyle(color: textColor)),
        ],
      ),
    );
  }

  Widget textButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      style: buttonStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null && isIconOnTheLeft)
            Icon(
              icon,
              color: iconColor,
            ),
          if (iconImageSvg != null)
            SizedBox(child: iconImageSvg),
          Text(
            title ?? '',
            style: textStyle ?? TextStyle(color: textColor),
          ),
          if (icon != null && isIconOnTheLeft == false)
            Icon(
              icon,
              color: iconColor,
            ),
        ],
      ),
    );
  }

  Widget iconButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: Icon(
        icon ?? Icons.add_box,
        color: iconColor,
      ),
    );
  }

  Widget textIconButton(BuildContext context) {
    return TextButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Text(
            title ?? '',
            style: textStyle ?? TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
