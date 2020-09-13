//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
//import 'package:enrio/main.dart';
import 'package:enrio/product.dart';
import 'package:enrio/sign_in.dart';
import 'package:enrio/Screens/database.dart';
// import 'image_input.dart';
//import 'package:path/path.dart' as path;
//import 'package:path_provider/path_provider.dart' as syspaths;
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Profilepage extends StatefulWidget {
  static final String routeName = '/ProfilepageRoute';
  Profilepage({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final _tower = FocusNode();
  final _mobile = FocusNode();
  final _precautions = FocusNode();
  final _description = FocusNode();
  final _form = GlobalKey<FormState>();
  //final _towerFocusNode = FocusNode();
  var _editedProfile = Profile(
    id: '',
    name: '',
    tower: '',
    mobile: '',
  );
  File _storedImage;

  // Future<void> _takePicture() async {
  //   final imageFile = await ImagePicker.pickImage(
  //     source: ImageSource.camera,
  //     maxWidth: 600,
  //   );
  //   setState(() {
  //     _storedImage = imageFile;
  //   });
  // }

  Future<void> uploadPic(String filename) async {
    StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(filename);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_storedImage);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  }

  @override
  void dispose() {
    _tower.dispose();
    _mobile.dispose();
    _precautions.dispose();
    _description.dispose();
    super.dispose();
  }

  void _saveForm() {
    _form.currentState.save();
    print(_editedProfile.name);
    print(_editedProfile.tower);
    print(_editedProfile.mobile);
    DatabaseService(uid: userid).updateUserData(
        _editedProfile.name, _editedProfile.tower, _editedProfile.mobile);
    String filename = userid;
    uploadPic(filename);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFFF9D976),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        color: Color(0xFFF9D976),
        child: SafeArea(
          child: Container(
            child: InkWell(
              onTap: () {
                _saveForm();
                //  Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Send Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF9D976),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(children: <Widget>[
            TextFormField(
              style: TextStyle(),
              cursorColor: Color(0xFFF9D976),
              decoration: InputDecoration(labelText: 'Name'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_tower);
              },
              onSaved: (value) {
                _editedProfile = Profile(
                  id: null,
                  mobile: _editedProfile.mobile,
                  name: value,
                  tower: _editedProfile.tower,
                );
              },
            ),
            TextFormField(
              cursorColor: Color(0xFFF9D976),
              decoration: InputDecoration(labelText: 'Tower'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.numberWithOptions(),
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_mobile);
              },
              onSaved: (value) {
                _editedProfile = Profile(
                  id: null,
                  name: _editedProfile.name,
                  mobile: _editedProfile.mobile,
                  tower: value,
                );
              },
              focusNode: _tower,
            ),
            TextFormField(
              cursorColor: Color(0xFFF9D976),
              decoration: InputDecoration(labelText: 'Mobile No'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.numberWithOptions(),
              onSaved: (value) {
                _editedProfile = Profile(
                  id: null,
                  name: _editedProfile.name,
                  mobile: value,
                  tower: _editedProfile.tower,
                );
              },
              onFieldSubmitted: (_) {
                _saveForm();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
