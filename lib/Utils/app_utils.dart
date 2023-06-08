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

  largeHeadingTextStyle({color}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  smallTitleTextStyle({color}) {
    return TextStyle(
      color: color,
      fontSize: 14,
    );
  }

  mediumTitleTextStyle({color}) {
    return TextStyle(
      fontSize: 15,
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
                color: darkBlueColor.withOpacity(0.5),
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
}
