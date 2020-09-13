//import 'dart:html';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DatabaseService {
  final String uid;
  final String collection;
  DatabaseService({this.uid, this.collection});
  // collection reference
  final CollectionReference headphones =
      Firestore.instance.collection('Headphones');

  Future<void> updateProductData(String name, String precautions, double price,
      double time, String description) async {
    return await headphones.document(uid).setData({
      'Name': name,
      'Price': price,
      'Time': time,
      'Precautions': precautions,
      'Description': description,
    });
  }

  Future<void> updateUserData(String name, String tower, String mobile) async {
    return await headphones.document(uid).setData({
      'Name': name,
      'Tower': tower,
      'Mobile': mobile,
    });
  }

  Future<void> uploadPic(File _image, String filename) async {
    StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(filename);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  }
}
