import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
    //required Key key,

  });

  @override
  _UserAvatarState createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  GlobalKey<_UserAvatarState> userAvatarKey = GlobalKey<_UserAvatarState>();

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
            onPressed: () {
              _pickImage(context);
            },
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

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final pickedImage = File(pickedFile.path);
      setState(() {
        _pickedImage = pickedImage;
      });

      // Notify the parent about the picked image
      widget.onImagePicked(_pickedImage);
    }
  }
}
