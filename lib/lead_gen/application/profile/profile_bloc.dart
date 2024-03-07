import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/auth/user.dart';

import '../../domain/profile/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(const ProfileState.initial()) {
    on<ProfileEvent>(mapEventToState);
  }

  Future<void>mapEventToState(ProfileEvent event,Emitter<ProfileState>emit) async{
    await event.map(
        getUserData: (e) async{
          emit(const ProfileState.loadingInProgress());

          final getData = await _profileRepository.getUserDetails(e.context);

          getData.fold((error){
            emit(ProfileState.failed(error.message));
          },(userProfileData){
            emit(ProfileState.userData(userProfileData));
          });
        },
        updateUserData: (e) async{
          emit(const ProfileState.loadingInProgress());

          final tryUpdate = await _profileRepository.updateUserDetails(
              User(
                  userId: e.user.userId,
                  name: e.user.name,
                  phoneNumber: e.user.phoneNumber,
                  email: e.user.email,
                  businessName: e.user.businessName,
                  state: e.user.state,
                  pincode: e.user.pincode,
                  country: e.user.country,
                  address: e.user.address,
                  website: e.user.website,
                  registeredAddress: e.user.registeredAddress,
                  facebook: e.user.facebook,
                  instagram: e.user.instagram,
                  twitter: e.user.twitter,
                  linkedIn: e.user.linkedIn,
                  google: e.user.google
              ),
              e.context
          );

          tryUpdate.fold((error){
            emit(ProfileState.failed(error.message));
          },(success){
            emit(ProfileState.success(success.successMessage));
          });
        }
    );
  }
}
