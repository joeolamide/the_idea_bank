import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/text_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:the_idea_bank/widgets/user_image.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _controller;
  var _counterText = "";
  File? _pickedImage;
  Uint8List webImage = Uint8List(8);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.30;
    double secondWidth = MediaQuery.of(context).size.width * 0.60;
    double secondcontainerWidth = MediaQuery.of(context).size.width * 0.35;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigText(
                  text: "Complete Profile",
                ),
                const Gap(30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        _pickedImage == null
                            ? CircleAvatar(
                                radius: 65,
                                backgroundImage: NetworkImage(
                                    'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png'),
                                backgroundColor: null,
                              ): CircleAvatar(
                          radius: 65,
                           backgroundImage:  MemoryImage(webImage,),
                          // kIsWeb
                          //     ? Image.memory(
                          //   webImage,
                          //   //fit: BoxFit.fill,
                          // )
                          //     : Image.file(
                          //   _pickedImage!,
                          //   fit: BoxFit.fill,
                          // ),,
                        ),

                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              _pickImage();
                            },
                            icon: Icon(Icons.edit),
                          ),
                          bottom: -10,
                          left: 80,
                        ),
                      ],
                    ),
                  ],
                ),
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
                                'Tell us about yourself, we do love to kow you!!!!!!!!!!!!!',
                            height: 200,
                            onChanged: (value) {
                              setState(() {
                                _counterText = (200 - value.length).toString();
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

  Future<void> _pickImage() async {
    if (!kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          _pickedImage = selected;
        });
      } else {
        print("No image has been picked");
      }
    } else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          _pickedImage = File('a');
        });
      } else {
        print("No image has been picked");
      }
    }
  }
}
