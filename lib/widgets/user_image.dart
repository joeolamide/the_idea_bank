import 'dart:io';
import 'package:flutter/material.dart';

class UserAvatar extends StatefulWidget {
  final String? imageUrl;
  final String? userName;
  final ValueChanged<File?> onImagePicked;
  final VoidCallback onEditPressed;

  UserAvatar({
    this.imageUrl,
    this.userName,
    required this.onImagePicked,
    required this.onEditPressed,
    Key? key,
  }) : super(key: key);

  @override
  UserAvatarState createState() => UserAvatarState();
}

class UserAvatarState extends State<UserAvatar> {
  File? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: _pickedImage != null
              ? FileImage(_pickedImage!) as ImageProvider<Object>
              : (widget.imageUrl != null
              ? NetworkImage(widget.imageUrl!)
              : null),
          child: (_pickedImage == null && widget.imageUrl == null)
              ? Text(
            _getInitials(),
            style: TextStyle(fontSize: 16, color: Colors.white),
          )
              : null,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            icon: Icon(Icons.edit),
            onPressed: widget.onEditPressed,
          ),
        ),
      ],
    );
  }

  String _getInitials() {
    if (widget.userName == null || widget.userName!.isEmpty) {
      return "?";
    }

    List<String> names = widget.userName!.trim().split(" ");
    String initials = "";

    int numOfInitials = names.length >= 2 ? 2 : names.length;

    for (int i = 0; i < numOfInitials; i++) {
      initials += names[i][0].toUpperCase();
    }

    return initials;
  }

  void onImagePicked(File? pickedImage) {
    setState(() {
      _pickedImage = pickedImage;
    });
    widget.onImagePicked(pickedImage);
  }
}
