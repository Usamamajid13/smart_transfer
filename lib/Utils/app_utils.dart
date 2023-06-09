import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';

class AppUtils {
  mediumTitleBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  mediumTitleSemiBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 14,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  xmediumTitleSemiBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  xmediumTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  xmediumNormalTextStyle({color}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  privacyTextStyle({color}) {
    return TextStyle(
      fontSize: 17,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  largeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  largestHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  xlargeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  largeTextStyle({color}) {
    return TextStyle(
      fontSize: 18,
      color: color,
    );
  }

  largeSemiBoldTextStyle({color}) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  smallTitleTextStyle({color}) {
    return TextStyle(
      color: color,
      fontSize: 12,
    );
  }

  smallTitleSemiBoldTextStyle({color}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }

  mediumTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 14,
      color: color,
    );
  }

  bigButton(
      {width,
      onTap,
      borderWidth,
      borderRadius,
      text,
      textColor,
      fontSize,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            boxShadow: [
              BoxShadow(
                color: darkBlueColor.withOpacity(0.4),
                blurRadius: 3,
                offset: const Offset(0, 2),
              )
            ],
            color: darkBlueColor),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
              fontWeight: fontWeight ?? FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  bigWhiteButton(
      {width,
      onTap,
      borderWidth,
      borderRadius,
      text,
      textColor,
      fontSize,
      fontWeight}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(0, 2),
              )
            ],
            color: Colors.white),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
              fontWeight: fontWeight ?? FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  textField(
      {controller,
      hintText,
      width,
      keyboardType,
      fontSize,
      obscureText,
      labelText,
      labelColor,
      onChanged,
      suffixIcon,
      validator}) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: labelColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            child: TextFormField(
              onChanged: onChanged,
              keyboardType: keyboardType,
              validator: validator,
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                  suffixIconColor: blueColor,
                  contentPadding: const EdgeInsets.only(top: 5, left: 15),
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: fontSize,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  labelTextField(
      {controller,
      hintText,
      focusNode,
      keyboardType,
      obscureText,
      onTap,
      suffixIcon,
      labelText,
      enabled,
      validator,
      prefixIcon,
      onChange}) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: smallTitleTextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 40,
            child: TextFormField(
              onTap: onTap,
              enabled: enabled,
              obscuringCharacter: '*',
              onChanged: onChange,
              keyboardType: keyboardType,
              style: mediumTitleTextStyle(
                color: Colors.black,
              ),
              focusNode: focusNode,
              validator: validator,
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: hintText,
                hintStyle: mediumTitleTextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  numPadButton({required String text, onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            text,
            style: largeSemiBoldTextStyle(),
          ),
        ),
      ),
    );
  }

  numPadImageButton({required String image, onTap, scale}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Image.asset(
            image,
            scale: scale,
          ),
        ),
      ),
    );
  }

  moreWidget({onTap, image, scale, text, color}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                scale: scale,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: smallTitleSemiBoldTextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
