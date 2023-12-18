import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/text_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:the_idea_bank/widgets/user_image.dart'; // Adjust the import path as per your project structure
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _controller;
  var _counterText = "";
  File? _userAvatar;
  GlobalKey<UserAvatarState> userAvatarKey = GlobalKey<UserAvatarState>();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  // Function to pick an image from the gallery
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final pickedImage = File(pickedFile.path);
      setState(() {
        _userAvatar = pickedImage;
      });

      // Notify the UserAvatar about the picked image
      // Use the existing instance instead of creating a new one
      userAvatarKey.currentState?.onImagePicked(pickedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.30;
    double secondWidth = MediaQuery.of(context).size.width * 0.60;
    double secondcontainerWidth = MediaQuery.of(context).size.width * 0.35;

    // Create an instance of UserAvatar and store it in a variable
    UserAvatar userAvatar = UserAvatar(
      key: userAvatarKey,
      imageUrl: _userAvatar?.path,
      onEditPressed: _pickImage,
      onImagePicked: (File? pickedImage) {
        setState(() {
          _userAvatar = pickedImage;
        });
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigText(
                  text: "Complete Profile",
                ),
                const Gap(30),
                // Use the instance of UserAvatar
                userAvatar,
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(text: "First Name"),
                        const Gap(10),
                        Container(
                          width: containerWidth,
                          child: BoxInputField(
                            controller: TextEditingController(),
                            placeholder: 'E.g John',
                          ),
                        ),
                        const Gap(30),
                        SmallText(text: "Email address"),
                        Container(
                          width: containerWidth,
                          child: BoxInputField(
                            controller: TextEditingController(),
                            placeholder: 'E.g emailneeded@gmail.com',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(text: "Last Name"),
                        const Gap(10),
                        Container(
                          width: containerWidth,
                          child: BoxInputField(
                            controller: TextEditingController(),
                            placeholder: 'E.g Ogbalu',
                          ),
                        ),
                        const Gap(30),
                        SmallText(text: "Phone Number"),
                        Container(
                          width: containerWidth,
                          child: BoxInputField(
                            controller: TextEditingController(),
                            placeholder: '+23480 6432 3333',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: "Bio"),
                    const Gap(15),
                    Container(
                      width: secondWidth,
                      child: Column(
                        children: [
                          BoxInputField(
                            controller: _controller,
                            placeholder:
                            'Tell us about yourself, we do love to know you!',
                            height: 200,
                            onChanged: (value) {
                              setState(() {
                                _counterText =
                                    (200 - value.length).toString();
                              });
                            },
                            maxLength: 200,
                          ),
                          //Text('$_counterText'),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: secondcontainerWidth,
                      child: BoxButton(
                        title: "Complete",
                        onTap: () {
                          //context.push('/Profile-Page');
                          print("Profile created successfully");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
