import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:milestone2/screens/register_company/widgets/get_logo.dart';

import '/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:milestone2/lib_all.dart';
// import 'package:flutter_svg/svg.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  String image = '';
  String imageName = '';

  Future<String> pickImage(source) async {
    final XFile? image =
        await ImagePicker().pickImage(source: source);

    if (image != null) {
      imageName = image.name;
      return image.path;
    } else {
      return '';
    }
  }

  Future showImage(context, imageLink) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: SizedBox(
              height: 284.h,
              width: 343.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const NormalText1(text: 'Upload Your Logo'),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                      child: Image.file(
                    File(imageLink),
                    width: 100.w,
                    height: 100.h,
                  ),),

                  NormalText1(text: imageName),

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 25.w),
                    child: Button1(buttonText: 'Submit  ', isIcon: true,icon: Icons.thumb_up_alt_outlined, onTap: (){}),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: context.height * 0.12,
                  ),
                  const Center(
                    child: TitleText1(text: 'Upload Logo'),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/upload_logo.svg',
                    fit: BoxFit.fill,
                    height: 160.h,
                    width: 255.w,
                  ),
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  SizedBox(
                    width: 270.w,
                    child: const NormalText2(
                        text:
                            'Make yourself stand out from other companies by uploading your company\'s logo.'),
                  ),
                  SizedBox(
                    height: context.height * 0.15,
                  ),
                  Button1(
                    buttonText: 'Upload  ',
                    isIcon: true,
                    icon: Icons.file_upload_outlined,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: SizedBox(
                              height: 284.h,
                              width: 343.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const NormalText1(text: 'Upload Your Logo'),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GetCompanyLogo(
                                        imageLink:
                                            'assets/images/select_image_from_gallery.svg',
                                        callback: () async {
                                          image = await pickImage(ImageSource.gallery);
                                          if (image.isNotEmpty) {
                                            Navigator.pop(context);
                                            showImage(context, image);
                                            setState(() {});
                                          }
                                        },
                                      ),
                                      GetCompanyLogo(
                                        imageLink:
                                            'assets/images/select_image_from_camera.svg',
                                        callback: () async {
                                          image = await pickImage(ImageSource.gallery);
                                          if (image.isNotEmpty) {
                                            Navigator.pop(context);
                                            showImage(context, image);
                                            setState(() {});
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  LinkText(
                    text: "Skip",
                    callback: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
