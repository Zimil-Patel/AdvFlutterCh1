import 'dart:developer';

import 'package:adv_flutter_ch1/gallery%20with%20authentication/utils/albums_list.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../model/gallery_model.dart';

class GalleryProvider extends ChangeNotifier{

  final auth = LocalAuthentication();

  List<GalleryModel> albumsList = [];

  GalleryProvider(){
    albumsList.clear();
    albumsList = albums.map((e) => GalleryModel.getData(e)).toList();
    notifyListeners();
  }

  Future<bool> makeAuthentication() async {

    bool isDeviceSupport = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;

    if(isDeviceSupport && isActive){

      return await auth.authenticate(localizedReason: 'Required to open!');

    } else {
      log('Warning: Authentication not supported...!');
    }

    return false;
  }

}