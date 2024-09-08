import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'complete_profile_event.dart';

part 'complete_profile_state.dart';

class CompleteProfileBloc
    extends Bloc<CompleteProfileEvent, CompleteProfileState> {

  final ImagePicker _imagePicker = ImagePicker();

  CompleteProfileBloc() : super(CompleteProfileInitial()) {
    on<CompleteProfileBackClickEvent>(completeProfileBackClickEvent);
    on<CompleteProfileButtonClickEvent>(completeProfileButtonClickEvent);
    // on<CompleteProfileSelectImageClickEvent>(
    //     completeProfileSelectImageClickEvent);
    on<CompleteProfileNameChanged>(completeProfileNameChanged);
    on<CompleteProfileNumberChanged>(completeProfileNumberChanged);
    on<CompleteProfileGenderSelected>(completeProfileGenderSelected);
    on<CompleteProfileSubmitted>(completeProfileSubmitted);
    on<CompleteProfileSelectImageClickEvent>(completeProfileSelectImageClickEvent);
  }

  FutureOr<void> completeProfileBackClickEvent(
      CompleteProfileBackClickEvent event, Emitter<CompleteProfileState> emit) {
    emit(CompleteProfileBackClickState());
  }

  FutureOr<void> completeProfileButtonClickEvent(
      CompleteProfileButtonClickEvent event,
      Emitter<CompleteProfileState> emit) {
    emit(CompleteProfileButtonClickState());
  }

  // FutureOr<void> completeProfileSelectImageClickEvent(
  //     CompleteProfileSelectImageClickEvent event,
  //     Emitter<CompleteProfileState> emit) {
  //   emit(CompleteProfileSelectImageClickState());
  // }

  FutureOr<void> completeProfileNameChanged(
      CompleteProfileNameChanged event, Emitter<CompleteProfileState> emit) {
    if (event.name.isEmpty) {
      emit(CompleteProfileInvalid("Name should not be Empty"));
    } else {
      emit(CompleteProfileValid());
    }
  }

  FutureOr<void> completeProfileNumberChanged(
      CompleteProfileNumberChanged event, Emitter<CompleteProfileState> emit) {
    if (event.phoneNumber.isEmpty) {
      emit(CompleteProfileInvalid("Phone Number should not be Empty"));
    } else if (event.phoneNumber.length < 10) {
      emit(CompleteProfileInvalid("Phone Number should be greater than 10"));
    } else {
      emit(CompleteProfileValid());
    }
  }

  FutureOr<void> completeProfileGenderSelected(
      CompleteProfileGenderSelected event,
      Emitter<CompleteProfileState> emit) {

  }



  FutureOr<void> completeProfileSubmitted(CompleteProfileSubmitted event, Emitter<CompleteProfileState> emit) {

    if (event.name.isEmpty) {
      emit(CompleteProfileInvalid("Name should not be Empty"));
      return null;
    }

    if (event.phoneNumber.isEmpty) {
      emit(CompleteProfileInvalid("Phone Number should not be Empty"));
      return null;
    } else if (event.phoneNumber.length < 10) {
      emit(CompleteProfileInvalid("Phone Number should be greater than 10"));
      return null;
    }

    // If both are valid, proceed with login
    emit(CompleteProfileValid());
    _performCompleteProfile(
        event.name , event.phoneNumber, event.gender, emit);
  }

  void _performCompleteProfile(String name, String phoneNumber, String gender, Emitter<CompleteProfileState> emit) {
    print('CompleteProfile with name: $name phoneNumber: $phoneNumber and gender: $gender');
    emit(CompleteProfileButtonClickState());
  }

  Future<void> _pickImage(Emitter<CompleteProfileState> emit) async {
    final XFile? pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final File imageFile = File(pickedFile.path);
      emit(CompleteProfileImagePickedState(imageFile));
    } else {
      emit(CompleteProfileErrorState("No image selected."));
    }
  }

  FutureOr<void> completeProfileSelectImageClickEvent(CompleteProfileSelectImageClickEvent event, Emitter<CompleteProfileState> emit) async {
    var status = await Permission.photos.status;

    if (status.isGranted) {
      // Permission is already granted, pick the image
      await _pickImage(emit);
    } else if (status.isDenied || status.isRestricted) {
      // Request permission if not granted
      status = await Permission.photos.request();
      if (status.isGranted) {
        // Permission granted after request, pick the image
        await _pickImage(emit);
      } else {
        // Permission denied
        emit(CompleteProfileErrorState("Permission denied."));
      }
    } else if (status.isPermanentlyDenied) {
      // If permission is permanently denied, open app settings
      openAppSettings();
      emit(CompleteProfileErrorState("Permission is permanently denied. Please enable it from settings."));
    }
  }
}
