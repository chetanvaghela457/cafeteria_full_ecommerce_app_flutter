import 'dart:io';
import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/complete_profile/bloc/complete_profile_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/pages/reset_password/ui/reset_password.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/gender_widget.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/phone_coutry_field.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  CompleteProfileBloc completeProfileBloc = CompleteProfileBloc();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  File? selectedImage;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompleteProfileBloc, CompleteProfileState>(
      bloc: completeProfileBloc,
      listenWhen: (previous, current) => current is CompleteProfileActionState,
      buildWhen: (previous, current) => current is! CompleteProfileActionState,
      listener: (context, state) {
        if (state is CompleteProfileBackClickState) {
          Navigator.pop(context);
        } else if (state is CompleteProfileButtonClickState) {
          Navigator.pushNamed(context, AppRouter.LOCATION_PERMISSION);
        } else if (state is CompleteProfileImagePickedState) {
          // Update the selected image
          setState(() {
            selectedImage = state.imageFile;
          });
        } else if (state is CompleteProfileErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColors.backgroundColor,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  completeProfileBloc
                                      .add(CompleteProfileBackClickEvent());
                                },
                                child: SvgPicture.asset(
                                  Assets.imgArrowBack,
                                  width: getProportionateScreenHeight(40),
                                ),
                              ),
                            ],
                          ),
                        ),
                        heightSizeBox(30),
                        Center(
                          child: Text(
                            Strings.completeYourProfile,
                            style: TextStyle(
                                color: AppColors.clrBlack, fontSize: 30),
                          ),
                        ),
                        heightSizeBox(10),
                        Text(
                          Strings.completeProfileText,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: AppColors.clrGrey, fontSize: 14),
                        ),
                        heightSizeBox(10),
                        Stack(
                          children: [
                            selectedImage != null
                                ? ClipOval(
                                    child: Image.file(
                                      selectedImage!,
                                      width: getProportionateScreenWidth(100),
                                      height: getProportionateScreenWidth(100),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : SvgPicture.asset(
                                    Assets.imgRoundUser,
                                    width: getProportionateScreenWidth(100),
                                  ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: GestureDetector(
                                onTap: () {
                                  completeProfileBloc.add(
                                      CompleteProfileSelectImageClickEvent());
                                },
                                child: SvgPicture.asset(
                                  Assets.imgEditIconSelectImage,
                                  width: getProportionateScreenWidth(30),
                                ),
                              ),
                            )
                          ],
                        ),
                        heightSizeBox(20),
                        TextFieldwidget(
                          width: SizeConfig.screenWidth * 0.9,
                          title: Strings.name,
                          hintText: Strings.enterName,
                          controller: nameController,
                          errorText: state is CompleteProfileInvalid &&
                                  state.message.contains("name")
                              ? state.message
                              : null,
                          onChanged: (value) {
                            completeProfileBloc
                                .add(CompleteProfileNameChanged(value));
                          },
                        ),
                        heightSizeBox(20),
                        PhoneTextField(
                          width: SizeConfig.screenWidth * 0.9,
                          title: Strings.phoneNumber,
                          mobileNoCont: phoneNumberController,
                          backgroundColor: AppColors.clrTextFieldColor,
                          errorText: state is CompleteProfileInvalid &&
                                  state.message.contains("Phone Number")
                              ? state.message
                              : null,
                          onChanged: (value) {
                            completeProfileBloc
                                .add(CompleteProfileNumberChanged(value));
                          },
                        ),
                        heightSizeBox(20),
                        GenderWidget(
                          dropDownValue: "Select",
                          onChanged: (value) {
                            selectedGender = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(80),
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                      right: getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: AppColors.clrWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.clrBlack.withAlpha(29),
                            blurRadius: 1,
                            spreadRadius: 1),
                      ]),
                  child: Center(
                    child: Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.05,
                            right: SizeConfig.screenWidth * 0.05),
                        child: CommonButton(
                            onPressed: () {
                              completeProfileBloc.add(CompleteProfileSubmitted(
                                  nameController.text,
                                  phoneNumberController.text,
                                  selectedGender!));
                            },
                            title: Strings.completeProfile)),
                  ),
                )
              ],
            )));
      },
    );
  }

  Widget heightSizeBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
