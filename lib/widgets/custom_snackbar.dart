import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show(
      BuildContext context, {
        required String message,
        required Color backgroundColor,
        required Color borderColor,
        required Color iconColor,
        required Color closeIconColor,
        required Duration duration,
      }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: duration,
        content: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0), // Start position from the right
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.easeInOut,
          )),
          child: _buildSnackBarContent(
            context,
            message,
            backgroundColor,
            borderColor,
            iconColor,
            closeIconColor,
          ),
        ),
      ),
    );
  }

  static Widget _buildSnackBarContent(
      BuildContext context,
      String message,
      Color backgroundColor,
      Color borderColor,
      Color iconColor,
      Color closeIconColor,
      ) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.3, // Set width to 30% of screen width
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.check_circle,
                color: iconColor,
              ),
              SizedBox(width: 10),
              Text(
                message,
                style: TextStyle(
                  color: iconColor,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.close,
              color: closeIconColor,
            ),
            onPressed: () {
              ScaffoldMessenger.of(_getScaffoldContext(context)).hideCurrentSnackBar();
            },
          ),
        ],
      ),
    );
  }

  static BuildContext _getScaffoldContext(BuildContext context) {
    final ScaffoldState? scaffold = Scaffold.of(context);
    assert(() {
      if (scaffold == null) {
        throw FlutterError('CustomSnackBar.show() called with a context that does not contain a Scaffold.');
      }
      return true;
    }());
    return scaffold!.context;
  }
}
